package com.moxa.sooth.core.base.exception;

import cn.hutool.core.exceptions.ExceptionUtil;
import com.moxa.dream.template.validate.ValidateDreamRunTimeException;
import com.moxa.sooth.core.base.constant.CommonConstant;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.enums.LogType;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.base.util.IpUtils;
import com.moxa.sooth.core.log.service.ISysLogService;
import com.moxa.sooth.core.log.view.SysLog;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@RestControllerAdvice
@Slf4j
public class SoothBootExceptionHandler {

    @Autowired
    private ISysLogService logService;

    /**
     * 处理自定义异常
     */
    @ExceptionHandler(SoothBootException.class)
    public Result<?> handleSoothBootException(SoothBootException e) {
        Throwable throwable = e.getCause();
        if (throwable != null) {
            handleThrowable(throwable);
        }
        return Result.error(e.getMessage());
    }

    @ExceptionHandler(ValidateDreamRunTimeException.class)
    public Result<?> handleSoothBootException(ValidateDreamRunTimeException e) {
        return Result.error(e.getMessage());
    }

    @ExceptionHandler(Throwable.class)
    public Result<?> handleThrowable(Throwable e) {
        Throwable curThrowable = e;
        while (curThrowable.getCause() != null) {
            curThrowable = curThrowable.getCause();
        }
        log.error(e.getMessage(), e);
        writeErrorLog(e);
        return Result.error("操作失败，" + e.getMessage());
    }

    private void writeErrorLog(Throwable e) {
        SysLog sysLog = new SysLog();
        SysUser loginUser = ClientUtil.getLoginUser();
        if (loginUser != null) {
            HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
            if (request != null) {
                sysLog.setUsername(loginUser.getUsername());
                sysLog.setRealname(loginUser.getRealname());
                sysLog.setRequestType(request.getMethod());
                sysLog.setRequestUrl(request.getRequestURI());
                sysLog.setUserAgent(request.getHeader(CommonConstant.USER_AGENT));
                //设置IP地址
                sysLog.setIp(IpUtils.getIpAddr(request));
            }
        }
        sysLog.setLogType(LogType.ERROR.getCode());
        sysLog.setCreateTime(new Date());
        sysLog.setMessage(e.getMessage());
        sysLog.setStackTrace(ExceptionUtil.stacktraceToString(e, 5000));
        sysLog.setExceptionClass(e.getClass().getName());
        sysLog.setStatus(1);
        try {
            logService.insert(sysLog);
        } catch (Exception ex) {
            log.error("写入日志失败", ex);
        }
    }
}
