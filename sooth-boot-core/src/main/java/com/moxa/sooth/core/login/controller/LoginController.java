package com.moxa.sooth.core.login.controller;

import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONObject;
import com.moxa.sooth.core.base.common.constant.CommonConstant;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.service.SysApiService;
import com.moxa.sooth.core.base.util.*;
import com.moxa.sooth.core.login.model.SysLoginModel;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/sys")
@Slf4j
public class LoginController {
    private final String BASE_CHECK_CODES = "qwertyuiplkjhgfdsazxcvbnmQWERTYUPLKJHGFDSAZXCVBNM1234567890";

    @Autowired
    private RedisUtil redisUtil;
    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private SysApiService sysApiService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public Result<JSONObject> login(@RequestBody SysLoginModel sysLoginModel) {
        Result<JSONObject> result = new Result<>();
        String username = sysLoginModel.getUsername();
        String password = sysLoginModel.getPassword();
        String captcha = sysLoginModel.getCaptcha();
        if (captcha == null) {
            result.error("验证码无效");
            return result;
        }
        String lowerCaseCaptcha = captcha.toLowerCase();
        String origin = lowerCaseCaptcha + sysLoginModel.getCheckKey();
        String realKey = Md5Util.md5Encode(origin, "utf-8");
        Object checkCode = redisUtil.get(realKey);
        if (checkCode == null || !checkCode.toString().equals(lowerCaseCaptcha)) {
            log.warn("验证码错误，key= {} , Ui checkCode= {}, Redis checkCode = {}", sysLoginModel.getCheckKey(), lowerCaseCaptcha, checkCode);
            // 改成特殊的code 便于前端判断
            result.setCode(HttpStatus.PRECONDITION_FAILED.value());
            return result;
        }
        SysUser sysUser = sysApiService.selectOneUser(username);
        result = sysApiService.checkUserIsEffective(sysUser);
        if (!result.isSuccess()) {
            return result;
        }

        //2. 校验用户名或密码是否正确
        String userpassword = PasswordUtil.encrypt(username, password, sysUser.getSalt());
        String syspassword = sysUser.getPassword();
        if (!syspassword.equals(userpassword)) {
            result.error("用户名或密码错误");
            return result;
        }
        //用户登录信息
        result = userInfo(sysUser);
        redisUtil.del(realKey);
        return result;
    }


    /**
     * 获取用户信息
     */
    @GetMapping("/user/getUserInfo")
    public Result<JSONObject> getUserInfo(HttpServletRequest request) {
        Result<JSONObject> result = new Result<JSONObject>();
        String username = JwtUtil.getUserNameByToken(request);
        if (StrUtil.isNotEmpty(username)) {
            // 根据用户名查询用户信息
            SysUser sysUser = sysApiService.selectOneUser(username);
            JSONObject obj = new JSONObject();
            obj.put("userInfo", sysUser);
            result.setResult(obj);
        }
        return result;

    }

    /**
     * 退出登录
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/logout")
    public Result<Object> logout(HttpServletRequest request, HttpServletResponse response) {
        //用户退出逻辑
        String token = request.getHeader(CommonConstant.X_ACCESS_TOKEN);
        if (StrUtil.isEmpty(token)) {
            return Result.error("退出登录失败！");
        }
        String username = JwtUtil.getUsername(token);
        SysUser sysUser = sysApiService.selectOneUser(username);
        if (sysUser != null) {
            log.info(" 用户名:  " + sysUser.getRealname() + ",退出成功！ ");
            redisTemplate.delete(CommonConstant.PREFIX_USER_TOKEN + token);
            //调用shiro的logout
            SecurityUtils.getSubject().logout();
            return Result.ok("退出登录成功！");
        } else {
            return Result.error("Token无效!");
        }
    }

    /**
     * 用户信息
     *
     * @param sysUser
     * @return
     */
    private Result<JSONObject> userInfo(SysUser sysUser) {
        Result<JSONObject> result = new Result<>();
        String username = sysUser.getUsername();
        String syspassword = sysUser.getPassword();
        // 获取用户部门信息
        JSONObject obj = new JSONObject(new LinkedHashMap<>());

        // 生成token
        String token = JwtUtil.sign(username, syspassword);
        // 设置token缓存有效时间
        redisTemplate.opsForValue().set(CommonConstant.PREFIX_USER_TOKEN + token, token, JwtUtil.EXPIRE_TIME * 2 / 1000, TimeUnit.SECONDS);
        obj.put("token", token);
        obj.put("userInfo", sysUser);
        result.setResult(obj);
        result.ok("登录成功");
        return result;
    }

    /**
     * 后台生成图形验证码 ：有效
     *
     * @param response
     * @param key
     */

    @GetMapping(value = "/randomImage/{key}")
    public Result<String> randomImage(HttpServletResponse response, @PathVariable("key") String key) {
        Result<String> res = new Result<String>();
        try {
            //生成验证码
            String code = RandomUtil.randomString(BASE_CHECK_CODES, 4);
            //存到redis中
            String lowerCaseCode = code.toLowerCase();

            // 加入密钥作为混淆，避免简单的拼接，被外部利用，用户自定义该密钥即可
            String origin = lowerCaseCode + key;
            String realKey = Md5Util.md5Encode(origin, "utf-8");

            redisUtil.set(realKey, lowerCaseCode, 60);
            log.info("获取验证码，Redis key = {}，checkCode = {}", realKey, code);
            //返回前端
            String base64 = RandImageUtil.generate(code);
            res.setResult(base64);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            res.error("获取验证码失败,请检查redis配置!");
            return res;
        }
        return res;
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
        String realKey = Md5Util.md5Encode(lowerCaseCaptcha + checkKey, "utf-8");
        Object checkCode = redisUtil.get(realKey);
        if (checkCode == null || !checkCode.equals(lowerCaseCaptcha)) {
            return Result.error("验证码错误");
        }
        return Result.ok();
    }
}
