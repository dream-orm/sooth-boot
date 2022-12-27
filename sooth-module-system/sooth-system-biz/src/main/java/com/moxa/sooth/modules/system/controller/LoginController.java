//package com.moxa.sooth.modules.system.controller;
//
//import cn.hutool.core.util.RandomUtil;
//import com.alibaba.fastjson.JSONObject;
//import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
//import com.baomidou.mybatisplus.core.toolkit.IdWorker;
//import com.moxa.sooth.common.constant.CacheConstant;
//import com.moxa.sooth.core.util.RedisUtil;
//import com.moxa.sooth.core.entity.Result;
//import com.moxa.sooth.core.service.BaseCommonService;
//import com.moxa.sooth.core.common.constant.CommonConstant;
//import com.moxa.sooth.core.common.constant.SymbolConstant;
//import com.moxa.sooth.core.common.system.util.JwtUtil;
//import com.moxa.sooth.core.common.system.vo.LoginUser;
//import com.moxa.sooth.core.common.util.Md5Util;
//import com.moxa.sooth.core.common.util.PasswordUtil;
//import com.moxa.sooth.core.common.util.encryption.EncryptedString;
//import com.moxa.sooth.core.common.util.oConvertUtils;
//import com.moxa.sooth.core.config.SoothBootConfig;
//import com.moxa.sooth.modules.system.entity.SysDepart;
//import com.moxa.sooth.modules.system.entity.SysRoleIndex;
//import com.moxa.sooth.modules.system.entity.SysTenant;
//import com.moxa.sooth.modules.system.entity.SysUser;
//import com.moxa.sooth.modules.system.model.SysLoginModel;
//import com.moxa.sooth.modules.system.service.*;
//import com.moxa.sooth.modules.system.service.impl.SysBaseApiImpl;
//import com.moxa.sooth.modules.system.util.RandImageUtil;
//import com.moxa.sooth.core.common.aspect.annotation.Api;
//import lombok.extern.slf4j.Slf4j;
//import org.apache.shiro.SecurityUtils;
//import org.springframework.beans.BeanUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.web.bind.annotation.*;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.util.*;
//
///**
// * @Author scott
// * @since 2018-12-17
// */
//@RestController
//@RequestMapping("/sys")
//@Api(tags = "用户登录")
//@Slf4j
//public class LoginController {
//    private final String BASE_CHECK_CODES = "qwertyuiplkjhgfdsazxcvbnmQWERTYUPLKJHGFDSAZXCVBNM1234567890";
//    @Autowired
//    private ISysUserService sysUserService;
//    @Autowired
//    private ISysPermissionService sysPermissionService;
//    @Autowired
//    private SysBaseApiImpl sysBaseApi;
//    @Autowired
//    private ISysLogService logService;
//    @Autowired
//    private RedisUtil redisUtil;
//    @Autowired
//    private ISysDepartService sysDepartService;
//    @Autowired
//    private ISysTenantService sysTenantService;
//    @Autowired
//    private ISysDictService sysDictService;
//    @Resource
//    private BaseCommonService baseCommonService;
//    @Autowired
//    private SoothBootConfig soothBootConfig;
//
//
//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public Result<JSONObject> login(@RequestBody SysLoginModel sysLoginModel) {
//        Result<JSONObject> result = new Result<JSONObject>();
//        String username = sysLoginModel.getUsername();
//        String password = sysLoginModel.getPassword();
//        //update-begin--Author:scott  Date:20190805 for：暂时注释掉密码加密逻辑，有点问题
//        //前端密码加密，后端进行密码解密
//        //password = AesEncryptUtil.desEncrypt(sysLoginModel.getPassword().replaceAll("%2B", "\\+")).trim();//密码解密
//        //update-begin--Author:scott  Date:20190805 for：暂时注释掉密码加密逻辑，有点问题
//
//        //update-begin-author:taoyan date:20190828 for:校验验证码
//        String captcha = sysLoginModel.getCaptcha();
//        if (captcha == null) {
//            result.error500("验证码无效");
//            return result;
//        }
//        String lowerCaseCaptcha = captcha.toLowerCase();
//        //update-begin-author:taoyan date:2022-9-13 for: VUEN-2245 【漏洞】发现新漏洞待处理20220906
//        // 加入密钥作为混淆，避免简单的拼接，被外部利用，用户自定义该密钥即可
//        String origin = lowerCaseCaptcha + sysLoginModel.getCheckKey() + soothBootConfig.getSignatureSecret();
//        String realKey = Md5Util.md5Encode(origin, "utf-8");
//        //update-end-author:taoyan date:2022-9-13 for: VUEN-2245 【漏洞】发现新漏洞待处理20220906
//        Object checkCode = redisUtil.get(realKey);
//        //当进入登录页时，有一定几率出现验证码错误 #1714
//        if (checkCode == null || !checkCode.toString().equals(lowerCaseCaptcha)) {
//            log.warn("验证码错误，key= {} , Ui checkCode= {}, Redis checkCode = {}", sysLoginModel.getCheckKey(), lowerCaseCaptcha, checkCode);
//            result.error500("验证码错误");
//            // 改成特殊的code 便于前端判断
//            result.setCode(HttpStatus.PRECONDITION_FAILED.value());
//            return result;
//        }
//        //update-end-author:taoyan date:20190828 for:校验验证码
//
//        //1. 校验用户是否有效
//        //update-begin-author:wangshuai date:20200601 for: 登录代码验证用户是否注销bug，if条件永远为false
//        LambdaQueryWrapper<SysUser> queryWrapper = new LambdaQueryWrapper<>();
//        queryWrapper.eq(SysUser::getUsername, username);
//        SysUser sysUser = sysUserService.getOne(queryWrapper);
//        //update-end-author:wangshuai date:20200601 for: 登录代码验证用户是否注销bug，if条件永远为false
//        result = sysUserService.checkUserIsEffective(sysUser);
//        if (!result.isSuccess()) {
//            return result;
//        }
//
//        //2. 校验用户名或密码是否正确
//        String userpassword = PasswordUtil.encrypt(username, password, sysUser.getSalt());
//        String syspassword = sysUser.getPassword();
//        if (!syspassword.equals(userpassword)) {
//            result.error500("用户名或密码错误");
//            return result;
//        }
//
//        //用户登录信息
//        result=userInfo(sysUser);
//        //update-begin--Author:liusq  Date:20210126  for：登录成功，删除redis中的验证码
//        redisUtil.del(realKey);
//        //update-begin--Author:liusq  Date:20210126  for：登录成功，删除redis中的验证码
//        LoginUser loginUser = new LoginUser();
//        BeanUtils.copyProperties(sysUser, loginUser);
//        baseCommonService.addLog("用户名: " + username + ",登录成功！", CommonConstant.LOG_TYPE_1, null, loginUser);
//        //update-end--Author:wangshuai  Date:20200714  for：登录日志没有记录人员
//        return result;
//    }
//
//
//    /**
//     * 获取用户信息
//     */
//    @GetMapping("/user/getUserInfo")
//    public Result<JSONObject> getUserInfo(HttpServletRequest request) {
//        Result<JSONObject> result = new Result<JSONObject>();
//        String username = JwtUtil.getUserNameByToken(request);
//        if (oConvertUtils.isNotEmpty(username)) {
//            // 根据用户名查询用户信息
//            SysUser sysUser = sysUserService.getUserByName(username);
//            JSONObject obj = new JSONObject();
//
//            //update-begin---author:scott ---date:2022-06-20  for：vue3前端，支持自定义首页-----------
//            String version = request.getHeader(CommonConstant.VERSION);
//            //update-begin---author:liusq ---date:2022-06-29  for：接口返回值修改，同步修改这里的判断逻辑-----------
//            SysRoleIndex roleIndex = sysUserService.getDynamicIndexByUserRole(username, version);
//            if (oConvertUtils.isNotEmpty(version) && roleIndex != null && oConvertUtils.isNotEmpty(roleIndex.getUrl())) {
//                String homePath = roleIndex.getUrl();
//                if (!homePath.startsWith(SymbolConstant.SINGLE_SLASH)) {
//                    homePath = SymbolConstant.SINGLE_SLASH + homePath;
//                }
//                sysUser.setHomePath(homePath);
//            }
//            //update-begin---author:liusq ---date:2022-06-29  for：接口返回值修改，同步修改这里的判断逻辑-----------
//            //update-end---author:scott ---date::2022-06-20  for：vue3前端，支持自定义首页--------------
//
//            obj.put("userInfo", sysUser);
//            obj.put("sysAllDictItems", sysDictService.queryAllDictItems());
//            result.setResult(obj);
//            result.success("");
//        }
//        return result;
//
//    }
//
//    /**
//     * 退出登录
//     *
//     * @param request
//     * @param response
//     * @return
//     */
//    @RequestMapping(value = "/logout")
//    public Result<Object> logout(HttpServletRequest request, HttpServletResponse response) {
//        //用户退出逻辑
//        String token = request.getHeader(CommonConstant.X_ACCESS_TOKEN);
//        if (oConvertUtils.isEmpty(token)) {
//            return Result.error("退出登录失败！");
//        }
//        String username = JwtUtil.getUsername(token);
//        LoginUser sysUser = sysBaseApi.getUserByName(username);
//        if (sysUser != null) {
//            //update-begin--Author:wangshuai  Date:20200714  for：登出日志没有记录人员
//            baseCommonService.addLog("用户名: " + sysUser.getRealname() + ",退出成功！", CommonConstant.LOG_TYPE_1, null, sysUser);
//            //update-end--Author:wangshuai  Date:20200714  for：登出日志没有记录人员
//            log.info(" 用户名:  " + sysUser.getRealname() + ",退出成功！ ");
//            //清空用户登录Token缓存
//            redisUtil.del(CommonConstant.PREFIX_USER_TOKEN + token);
//            //清空用户登录Shiro权限缓存
//            redisUtil.del(CommonConstant.PREFIX_USER_SHIRO_CACHE + sysUser.getId());
//            //清空用户的缓存信息（包括部门信息），例如sys:cache:user::<username>
//            redisUtil.del(String.format("%s::%s", CacheConstant.SYS_USERS_CACHE, sysUser.getUsername()));
//            //调用shiro的logout
//            SecurityUtils.getSubject().logout();
//            return Result.ok("退出登录成功！");
//        } else {
//            return Result.error("Token无效!");
//        }
//    }
//
//    /**
//     * 获取访问量
//     *
//     * @return
//     */
//    @GetMapping("loginfo")
//    public Result<JSONObject> loginfo() {
//        Result<JSONObject> result = new Result<JSONObject>();
//        JSONObject obj = new JSONObject();
//        //update-begin--Author:zhangweijian  Date:20190428 for：传入开始时间，结束时间参数
//        // 获取一天的开始和结束时间
//        Calendar calendar = new GregorianCalendar();
//        calendar.set(Calendar.HOUR_OF_DAY, 0);
//        calendar.set(Calendar.MINUTE, 0);
//        calendar.set(Calendar.SECOND, 0);
//        calendar.set(Calendar.MILLISECOND, 0);
//        Date dayStart = calendar.getTime();
//        calendar.add(Calendar.DATE, 1);
//        Date dayEnd = calendar.getTime();
//        // 获取系统访问记录
//        Long totalVisitCount = logService.findTotalVisitCount();
//        obj.put("totalVisitCount", totalVisitCount);
//        Long todayVisitCount = logService.findTodayVisitCount(dayStart, dayEnd);
//        obj.put("todayVisitCount", todayVisitCount);
//        Long todayIp = logService.findTodayIp(dayStart, dayEnd);
//        //update-end--Author:zhangweijian  Date:20190428 for：传入开始时间，结束时间参数
//        obj.put("todayIp", todayIp);
//        result.setResult(obj);
//        result.success("登录成功");
//        return result;
//    }
//
//    /**
//     * 获取访问量
//     *
//     * @return
//     */
//    @GetMapping("visitInfo")
//    public Result<List<Map<String, Object>>> visitInfo() {
//        Result<List<Map<String, Object>>> result = new Result<List<Map<String, Object>>>();
//        Calendar calendar = new GregorianCalendar();
//        calendar.set(Calendar.HOUR_OF_DAY, 0);
//        calendar.set(Calendar.MINUTE, 0);
//        calendar.set(Calendar.SECOND, 0);
//        calendar.set(Calendar.MILLISECOND, 0);
//        calendar.add(Calendar.DAY_OF_MONTH, 1);
//        Date dayEnd = calendar.getTime();
//        calendar.add(Calendar.DAY_OF_MONTH, -7);
//        Date dayStart = calendar.getTime();
//        List<Map<String, Object>> list = logService.findVisitCount(dayStart, dayEnd);
//        result.setResult(oConvertUtils.toLowerCasePageList(list));
//        return result;
//    }
//
//
//    /**
//     * 登陆成功选择用户当前部门
//     *
//     * @param user
//     * @return
//     */
//    @RequestMapping(value = "/selectDepart", method = RequestMethod.PUT)
//    public Result<JSONObject> selectDepart(@RequestBody SysUser user) {
//        Result<JSONObject> result = new Result<JSONObject>();
//        String username = user.getUsername();
//        if (oConvertUtils.isEmpty(username)) {
//            LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
//            username = sysUser.getUsername();
//        }
//        String orgCode = user.getOrgCode();
//        this.sysUserService.updateUserDepart(username, orgCode);
//        SysUser sysUser = sysUserService.getUserByName(username);
//        JSONObject obj = new JSONObject();
//        obj.put("userInfo", sysUser);
//        result.setResult(obj);
//        return result;
//    }
//
//    /**
//     * 用户信息
//     *
//     * @param sysUser
//     * @return
//     */
//    private Result<JSONObject> userInfo(SysUser sysUser) {
//        Result<JSONObject>result=new Result<>();
//        String username = sysUser.getUsername();
//        String syspassword = sysUser.getPassword();
//        // 获取用户部门信息
//        JSONObject obj = new JSONObject(new LinkedHashMap<>());
//
//        // 生成token
//        String token = JwtUtil.sign(username, syspassword);
//        // 设置token缓存有效时间
//        redisUtil.set(CommonConstant.PREFIX_USER_TOKEN + token, token);
//        redisUtil.expire(CommonConstant.PREFIX_USER_TOKEN + token, JwtUtil.EXPIRE_TIME * 2 / 1000);
//        obj.put("token", token);
//
//        // update-begin--Author:sunjianlei Date:20210802 for：获取用户租户信息
//        String tenantIds = sysUser.getRelTenantIds();
//        if (oConvertUtils.isNotEmpty(tenantIds)) {
//            List<Integer> tenantIdList = new ArrayList<>();
//            for (String id : tenantIds.split(SymbolConstant.COMMA)) {
//                tenantIdList.add(Integer.valueOf(id));
//            }
//            // 该方法仅查询有效的租户，如果返回0个就说明所有的租户均无效。
//            List<SysTenant> tenantList = sysTenantService.queryEffectiveTenant(tenantIdList);
//            if (tenantList.size() == 0) {
//                result.error500("与该用户关联的租户均已被冻结，无法登录！");
//                return result;
//            } else {
//                obj.put("tenantList", tenantList);
//            }
//        }
//        // update-end--Author:sunjianlei Date:20210802 for：获取用户租户信息
//
//        obj.put("userInfo", sysUser);
//
//        List<SysDepart> departs = sysDepartService.queryUserDeparts(sysUser.getId());
//        obj.put("departs", departs);
//        if (departs == null || departs.size() == 0) {
//            obj.put("multi_depart", 0);
//        } else if (departs.size() == 1) {
//            sysUserService.updateUserDepart(username, departs.get(0).getOrgCode());
//            obj.put("multi_depart", 1);
//        } else {
//            //查询当前是否有登录部门
//            // update-begin--Author:wangshuai Date:20200805 for：如果用戶为选择部门，数据库为存在上一次登录部门，则取一条存进去
//            SysUser sysUserById = sysUserService.getById(sysUser.getId());
//            if (oConvertUtils.isEmpty(sysUserById.getOrgCode())) {
//                sysUserService.updateUserDepart(username, departs.get(0).getOrgCode());
//            }
//            // update-end--Author:wangshuai Date:20200805 for：如果用戶为选择部门，数据库为存在上一次登录部门，则取一条存进去
//            obj.put("multi_depart", 2);
//        }
//        obj.put("sysAllDictItems", sysDictService.queryAllDictItems());
//        result.setResult(obj);
//        result.success("登录成功");
//        return result;
//    }
//    /**
//     * 后台生成图形验证码 ：有效
//     *
//     * @param response
//     * @param key
//     */
//
//    @GetMapping(value = "/randomImage/{key}")
//    public Result<String> randomImage(HttpServletResponse response, @PathVariable("key") String key) {
//        Result<String> res = new Result<String>();
//        try {
//            //生成验证码
//            String code = RandomUtil.randomString(BASE_CHECK_CODES, 4);
//            //存到redis中
//            String lowerCaseCode = code.toLowerCase();
//
//            //update-begin-author:taoyan date:2022-9-13 for: VUEN-2245 【漏洞】发现新漏洞待处理20220906
//            // 加入密钥作为混淆，避免简单的拼接，被外部利用，用户自定义该密钥即可
//            String origin = lowerCaseCode + key + soothBootConfig.getSignatureSecret();
//            String realKey = Md5Util.md5Encode(origin, "utf-8");
//            //update-end-author:taoyan date:2022-9-13 for: VUEN-2245 【漏洞】发现新漏洞待处理20220906
//
//            redisUtil.set(realKey, lowerCaseCode, 60);
//            log.info("获取验证码，Redis key = {}，checkCode = {}", realKey, code);
//            //返回前端
//            String base64 = RandImageUtil.generate(code);
//            res.setSuccess(true);
//            res.setResult(base64);
//        } catch (Exception e) {
//            log.error(e.getMessage(), e);
//            res.error500("获取验证码失败,请检查redis配置!");
//            return res;
//        }
//        return res;
//    }
//
//    /**
//     * 图形验证码
//     *
//     * @param sysLoginModel
//     * @return
//     */
//    @RequestMapping(value = "/checkCaptcha", method = RequestMethod.POST)
//    public Result<?> checkCaptcha(@RequestBody SysLoginModel sysLoginModel) {
//        String captcha = sysLoginModel.getCaptcha();
//        String checkKey = sysLoginModel.getCheckKey();
//        if (captcha == null) {
//            return Result.error("验证码无效");
//        }
//        String lowerCaseCaptcha = captcha.toLowerCase();
//        String realKey = Md5Util.md5Encode(lowerCaseCaptcha + checkKey, "utf-8");
//        Object checkCode = redisUtil.get(realKey);
//        if (checkCode == null || !checkCode.equals(lowerCaseCaptcha)) {
//            return Result.error("验证码错误");
//        }
//        return Result.ok();
//    }
//}
