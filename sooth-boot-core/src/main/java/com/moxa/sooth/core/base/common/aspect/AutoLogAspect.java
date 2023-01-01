package com.moxa.sooth.core.base.common.aspect;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.PropertyFilter;
import com.moxa.sooth.core.base.common.api.dto.LogDTO;
import com.moxa.sooth.core.base.common.aspect.annotation.AutoLog;
import com.moxa.sooth.core.base.common.constant.CommonConstant;
import com.moxa.sooth.core.base.common.constant.enums.OperateTypeEnum;
import com.moxa.sooth.core.base.common.util.IpUtils;
import com.moxa.sooth.core.base.common.util.SpringContextUtils;
import com.moxa.sooth.core.base.service.BaseCommonService;
import com.moxa.sooth.core.user.view.SysUser;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;


/**
 * 系统日志，切面处理类
 *
 * @Author scott
 * @email jeecgos@163.com
 * @Date 2018年1月14日
 */
@Aspect
@Component
public class AutoLogAspect {

    @Resource
    private BaseCommonService baseCommonService;

    @Pointcut("@annotation(com.moxa.sooth.core.base.common.aspect.annotation.AutoLog)")
    public void logPointCut() {

    }

    @Around("logPointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        long beginTime = System.currentTimeMillis();
        //执行方法
        Object result = point.proceed();
        //执行时长(毫秒)
        long time = System.currentTimeMillis() - beginTime;

        //保存日志
        saveSysLog(point, time, result);

        return result;
    }

    private void saveSysLog(ProceedingJoinPoint joinPoint, long time, Object obj) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();

        LogDTO dto = new LogDTO();
        AutoLog syslog = method.getAnnotation(AutoLog.class);
        if (syslog != null) {
            //update-begin-author:taoyan date:
            String content = syslog.value();
            //注解上的描述,操作日志内容
            dto.setLogType(syslog.logType());
            dto.setLogContent(content);
        }

        //请求的方法名
        String className = joinPoint.getTarget().getClass().getName();
        String methodName = signature.getName();
        dto.setMethod(className + "." + methodName + "()");


        //设置操作类型
        if (CommonConstant.LOG_TYPE_2 == dto.getLogType()) {
            dto.setOperateType(getOperateType(methodName, syslog.operateType()));
        }

        //获取request
        HttpServletRequest request = SpringContextUtils.getHttpServletRequest();
        //请求的参数
        dto.setRequestParam(getReqestParams(request, joinPoint));
        //设置IP地址
        dto.setIp(IpUtils.getIpAddr(request));
        //获取登录用户信息
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        if (sysUser != null) {
            dto.setUserid(sysUser.getUsername());
            dto.setUsername(sysUser.getRealname());

        }
        //耗时
        dto.setCostTime(time);
        dto.setCreateTime(new Date());
        //保存系统日志
        baseCommonService.addLog(dto);
    }


    /**
     * 获取操作类型
     */
    private int getOperateType(String methodName, int operateType) {
        if (operateType > 0) {
            return operateType;
        }
        //update-begin---author:wangshuai ---date:20220331  for：阿里云代码扫描规范(不允许任何魔法值出现在代码中)------------
        return OperateTypeEnum.getTypeByMethodName(methodName);
        //update-end---author:wangshuai ---date:20220331  for：阿里云代码扫描规范(不允许任何魔法值出现在代码中)------------
    }

    /**
     * @param request:   request
     * @param joinPoint: joinPoint
     * @Description: 获取请求参数
     * @author: scott
     * @date: 2020/4/16 0:10
     * @Return: java.lang.String
     */
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
                    //ServletRequest不能序列化，从入参里排除，否则报异常：java.lang.IllegalStateException: It is illegal to call this method if the current request is not in asynchronous mode (i.e. isAsyncStarted() returns false)
                    //ServletResponse不能序列化 从入参里排除，否则报异常：java.lang.IllegalStateException: getOutputStream() has already been called for this response
                    continue;
                }
                arguments[i] = paramsArray[i];
            }
            //update-begin-author:taoyan date:20200724 for:日志数据太长的直接过滤掉
            PropertyFilter profilter = new PropertyFilter() {
                @Override
                public boolean apply(Object o, String name, Object value) {
                    int length = 500;
                    if (value != null && value.toString().length() > length) {
                        return false;
                    }
                    return true;
                }
            };
            params = JSONObject.toJSONString(arguments, profilter);
            //update-end-author:taoyan date:20200724 for:日志数据太长的直接过滤掉
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



    /*    private void saveSysLog(ProceedingJoinPoint joinPoint, long time, Object obj) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();

        SysLog sysLog = new SysLog();
        AutoLog syslog = method.getAnnotation(AutoLog.class);
        if(syslog != null){
            //update-begin-author:taoyan date:
            String content = syslog.value();
            if(syslog.module()== ModuleType.ONLINE){
                content = getOnlineLogContent(obj, content);
            }
            //注解上的描述,操作日志内容
            sysLog.setLogContent(content);
            sysLog.setLogType(syslog.logType());
        }

        //请求的方法名
        String className = joinPoint.getTarget().getClass().getName();
        String methodName = signature.getName();
        sysLog.setMethod(className + "." + methodName + "()");


        //设置操作类型
        if (sysLog.getLogType() == CommonConstant.LOG_TYPE_2) {
            sysLog.setOperateType(getOperateType(methodName, syslog.operateType()));
        }

        //获取request
        HttpServletRequest request = SpringContextUtils.getHttpServletRequest();
        //请求的参数
        sysLog.setRequestParam(getReqestParams(request,joinPoint));

        //设置IP地址
        sysLog.setIp(IPUtils.getIpAddr(request));

        //获取登录用户信息
        LoginUser sysUser = (LoginUser)SecurityUtils.getSubject().getPrincipal();
        if(sysUser!=null){
            sysLog.setUserid(sysUser.getUsername());
            sysLog.setUsername(sysUser.getRealname());

        }
        //耗时
        sysLog.setCostTime(time);
        sysLog.setCreateTime(new Date());
        //保存系统日志
        sysLogService.save(sysLog);
    }*/
}
