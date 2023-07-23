package com.moxa.sooth.module.base.login.controller;

import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.digest.BCrypt;
import cn.hutool.crypto.digest.MD5;
import com.alibaba.fastjson.JSONObject;
import com.moxa.dream.system.cache.Cache;
import com.moxa.dream.system.cache.CacheFactory;
import com.moxa.dream.system.config.Configuration;
import com.moxa.sooth.module.base.core.constant.CommonConstant;
import com.moxa.sooth.module.base.core.entity.LoginUser;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.base.core.service.SysApiService;
import com.moxa.sooth.module.base.core.util.ClientUtil;
import com.moxa.sooth.module.base.core.util.JwtUtil;
import com.moxa.sooth.module.base.core.util.RandImageUtil;
import com.moxa.sooth.module.base.login.model.SysLoginModel;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/sys")
@Slf4j
public class LoginController {
    private final String BASE_CHECK_CODES = "qwertyuiplkjhgfdsazxcvbnmQWERTYUPLKJHGFDSAZXCVBNM1234567890";
    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private SysApiService sysApiService;
    @Autowired
    private Configuration configuration;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public Result<JSONObject> login(@RequestBody SysLoginModel sysLoginModel) {
        String username = sysLoginModel.getUsername();
        String password = sysLoginModel.getPassword();
        String captcha = sysLoginModel.getCaptcha();
        if (StrUtil.isEmpty(username)) {
            return Result.error("账号不能为空");
        }
        if (StrUtil.isEmpty(password)) {
            return Result.error("密码不能为空");
        }
        if (StrUtil.isEmpty(captcha)) {
            return Result.error("验证码无效");
        }
        String lowerCaseCaptcha = captcha.toLowerCase();
        String origin = lowerCaseCaptcha + sysLoginModel.getCheckKey();
        String realKey = MD5.create().digestHex(origin);
        Object checkCode = redisTemplate.opsForValue().get(realKey);
        if (checkCode == null || !checkCode.toString().equals(lowerCaseCaptcha)) {
            log.warn("验证码错误，key= {} , Ui checkCode= {}, Redis checkCode = {}", sysLoginModel.getCheckKey(), lowerCaseCaptcha, checkCode);
            return Result.error("验证码错误");
        }
        LoginUser loginUser = sysApiService.getLoginUser(username);
        if (!BCrypt.checkpw(password, loginUser.getPassword())) {
            return Result.error("用户名或密码错误");
        }
        //用户登录信息
        JSONObject result = userInfo(loginUser);
        redisTemplate.delete(realKey);
        return Result.ok(result, "登录成功");
    }

    /**
     * 刷新页面：获取用户信息
     */
    @GetMapping("/user/getUserInfo")
    public Result<LoginUser> getUserInfo(HttpServletRequest request) {
        String username = JwtUtil.getUserNameByToken(request);
        if (StrUtil.isNotEmpty(username)) {
            // 根据用户名查询用户信息
            LoginUser loginUser = sysApiService.getLoginUser(username);
            return Result.ok(loginUser);
        }
        return Result.error("获取用户信息失败");
    }

    /**
     * 退出登录
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/logout")
    public Result<Object> logout(HttpServletRequest request) {
        //用户退出逻辑
        String token = request.getHeader(CommonConstant.X_ACCESS_TOKEN);
        if (StrUtil.isEmpty(token)) {
            return Result.error("Token无效");
        }
        String username = JwtUtil.getUsername(token);
        if (StrUtil.isEmpty(username)) {
            return Result.error("Token无效");
        }
        LoginUser loginUser = ClientUtil.getLoginUser();
        if (loginUser == null || !loginUser.getUsername().equals(username)) {
            return Result.ok("退出登录失败");
        }
        redisTemplate.delete(CommonConstant.PREFIX_USER_TOKEN + token);
        SecurityUtils.getSubject().logout();
        return Result.ok("退出登录成功");
    }

    /**
     * 刷新缓存
     *
     * @return
     */
    @RequestMapping(value = "/refreshCache")
    public Result refreshCache() {
        CacheFactory cacheFactory = configuration.getCacheFactory();
        if (cacheFactory != null) {
            Cache cache = cacheFactory.getCache();
            if (cache != null) {
                cache.clear();
            }
        }
        return Result.ok(null, "刷新成功");
    }

    /**
     * 用户信息
     *
     * @param loginUser
     * @return
     */
    private JSONObject userInfo(LoginUser loginUser) {
        String username = loginUser.getUsername();
        String syspassword = loginUser.getPassword();
        // 获取用户部门信息
        JSONObject obj = new JSONObject(new LinkedHashMap<>());

        // 生成token
        String token = JwtUtil.sign(username, syspassword);
        // 设置token缓存有效时间
        redisTemplate.opsForValue().set(CommonConstant.PREFIX_USER_TOKEN + token, token, JwtUtil.EXPIRE_TIME * 2 / 1000, TimeUnit.SECONDS);
        obj.put("token", token);
        obj.put("userInfo", loginUser);
        return obj;
    }

    /**
     * 后台生成图形验证码 ：有效
     *
     * @param key
     */

    @GetMapping(value = "/randomImage/{key}")
    public Result<String> randomImage(@PathVariable("key") String key) {
        try {
            //生成验证码
            String code = RandomUtil.randomString(BASE_CHECK_CODES, 4);
            //存到redis中
            String lowerCaseCode = code.toLowerCase();

            // 加入密钥作为混淆，避免简单的拼接，被外部利用，用户自定义该密钥即可
            String origin = lowerCaseCode + key;
            String realKey = MD5.create().digestHex(origin);
            redisTemplate.opsForValue().set(realKey, lowerCaseCode, 120, TimeUnit.SECONDS);
            log.info("获取验证码，Redis key = {}，checkCode = {}", realKey, code);
            //返回前端
            String base64 = RandImageUtil.generate(code);
            return Result.ok(base64);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            return Result.error("获取验证码失败,请检查redis配置!");
        }
    }

    /**
     * 图形验证码
     *
     * @param sysLoginModel
     * @return
     */
    @RequestMapping(value = "/checkCaptcha", method = RequestMethod.POST)
    public Result<?> checkCaptcha(@RequestBody SysLoginModel sysLoginModel) {
        String captcha = sysLoginModel.getCaptcha();
        String checkKey = sysLoginModel.getCheckKey();
        if (captcha == null) {
            return Result.error("验证码无效");
        }
        String lowerCaseCaptcha = captcha.toLowerCase();
        String realKey = MD5.create().digestHex(lowerCaseCaptcha + checkKey);
        Object checkCode = redisTemplate.opsForValue().get(realKey);
        if (checkCode == null || !checkCode.equals(lowerCaseCaptcha)) {
            return Result.error("验证码错误");
        }
        return Result.ok();
    }
}
