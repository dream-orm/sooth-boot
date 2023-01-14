package com.moxa.sooth.core.log.aspect;

import cn.hutool.core.exceptions.ExceptionUtil;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.PropertyFilter;
import com.moxa.sooth.core.base.common.constant.CommonConstant;
import com.moxa.sooth.core.base.common.enums.LogType;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.base.controller.ModuleController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.util.IpUtils;
import com.moxa.sooth.core.base.util.SpringContextUtils;
import com.moxa.sooth.core.log.annotation.AutoLog;
import com.moxa.sooth.core.log.service.ISysLogService;
import com.moxa.sooth.core.log.view.SysLog;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;

@Slf4j
@Aspect
@Component
public class LogAspect {
    @Autowired
    private ISysLogService logService;

    @Around("execution(public * com.moxa.sooth.core.login.controller.LoginController.login(..))")
    public Object login(ProceedingJoinPoint joinPoint) throws Throwable {
        SysLog sysLog = new SysLog();
        sysLog.setBizModule("系统认证");
        sysLog.setDescription("登录");
        sysLog.setLogType(LogType.AUTH.getCode());
        fillSysLog(joinPoint, sysLog);
        return proceed(joinPoint, sysLog);
    }

    @Around("execution(public * com.moxa.sooth.core.login.controller.LoginController.logout(..))")
    public Object logout(ProceedingJoinPoint joinPoint) throws Throwable {
        SysLog sysLog = new SysLog();
        sysLog.setBizModule("系统认证");
        sysLog.setDescription("退出");
        sysLog.setLogType(LogType.AUTH.getCode());
        fillSysLog(joinPoint, sysLog);
        return proceed(joinPoint, sysLog);
    }

    @Around("@annotation(com.moxa.sooth.core.log.annotation.AutoLog)")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        ModuleController moduleController = (ModuleController) joinPoint.getTarget();
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        AutoLog syslog = method.getAnnotation(AutoLog.class);
        String description = syslog.value();
        SysLog sysLog = new SysLog();
        sysLog.setBizModule(moduleController.getBizModule());
        sysLog.setDescription(description);
        sysLog.setLogType(LogType.OPERATE.getCode());
        fillSysLog(joinPoint, sysLog);
        return proceed(joinPoint, sysLog);
    }

    public Object proceed(ProceedingJoinPoint joinPoint, SysLog sysLog) throws Throwable {
        long beginTime = System.currentTimeMillis();
        try {
            sysLog.setStatus(0);
            Object value = joinPoint.proceed();
            if (value != null && value instanceof Result<?>) {
                Result<?> result = (Result<?>) value;
                if (!result.isSuccess()) {
                    sysLog.setMessage(result.getMessage());
                    sysLog.setExceptionClass(SoothBootException.class.getName());
                    sysLog.setStatus(1);
                }
            }
            return value;
        } catch (Throwable e) {
            sysLog.setMessage(e.getMessage());
            sysLog.setStackTrace(ExceptionUtil.stacktraceToString(e));
            sysLog.setExceptionClass(e.getClass().getName());
            sysLog.setStatus(1);
            throw e;
        } finally {
            //执行时长(毫秒)
            long time = System.currentTimeMillis() - beginTime;
            sysLog.setCostTime(time);
            try {
                logService.insert(sysLog);
            } catch (Exception e) {
                log.error("写入日志失败", e);
            }
        }
    }

    private void fillSysLog(ProceedingJoinPoint joinPoint, SysLog sysLog) {
        sysLog.setCreateTime(new Date());
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        //请求的方法名
        String className = joinPoint.getTarget().getClass().getName();
        String methodName = signature.getName();
        sysLog.setMethod(className + "." + methodName);
        //获取request
        HttpServletRequest request = SpringContextUtils.getHttpServletRequest();
        sysLog.setRequestType(request.getMethod());
        sysLog.setUserAgent(request.getHeader("User-Agent"));
        //请求的参数
        sysLog.setRequestParam(getReqestParams(request, joinPoint));
        //设置IP地址
        sysLog.setIp(IpUtils.getIpAddr(request));
        //获取登录用户信息
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        if (sysUser != null) {
            sysLog.setUsername(sysUser.getUsername());
            sysLog.setRealname(sysUser.getRealname());
        }
    }

    private String getReqestParams(HttpServletRequest request, JoinPoint joinPoint) {
        String httpMethod = request.getMethod();
        String params = "";
        if (CommonConstant.HTTP_POST.equals(httpMethod) || CommonConstant.HTTP_PUT.equals(httpMethod) || CommonConstant.HTTP_PATCH.equals(httpMethod)) {
            Object[] paramsArray = joinPoint.getArgs();
            // java.lang.IllegalStateException: It is illegal to call this method if the current request is not in asynchronous mode (i.e. isAsyncStarted() returns false)
            //  https://my.oschina.net/mengzhang6/blog/2395893
            Object[] arguments = new Object[paramsArray.length];
            for (int i = 0; i < paramsArray.length; i++) {
                if (paramsArray[i] instanceof BindingResult || paramsArray[i] instanceof ServletRequest || paramsArray[i] instanceof ServletResponse || paramsArray[i] instanceof MultipartFile) {
                    continue;
                }
                arguments[i] = paramsArray[i];
            }
            PropertyFilter profilter = (Object o, String name, Object value) -> {
                int length = 500;
                if (value != null && value.toString().length() > length) {
                    return false;
                }
                return true;
            };
            params = JSONObject.toJSONString(arguments, profilter);
        } else {
            MethodSignature signature = (MethodSignature) joinPoint.getSignature();
            Method method = signature.getMethod();
            // 请求的方法参数值
            Object[] args = joinPoint.getArgs();
            // 请求的方法参数名称
            LocalVariableTableParameterNameDiscoverer u = new LocalVariableTableParameterNameDiscoverer();
            String[] paramNames = u.getParameterNames(method);
            if (args != null && paramNames != null) {
                for (int i = 0; i < args.length; i++) {
                    params += "  " + paramNames[i] + ": " + args[i];
                }
            }
        }
        return params;
    }
}
