package com.moxa.sooth.core.base.common.exception;

import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.data.redis.connection.PoolException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.NoHandlerFoundException;

@RestControllerAdvice
@Slf4j
public class SoothBootExceptionHandler {
    @ExceptionHandler(Exception.class)
    public Result<?> handleException(Exception e) {
        log.error(e.getMessage(), e);
        return handleRouteException(e);
    }

    private Result<?>handleRouteException(Exception e){
        if(e instanceof SoothBootException){
            return Result.error(e.getMessage());
        }else if(e instanceof HttpRequestMethodNotSupportedException){
            return httpRequestMethodNotSupportedException((HttpRequestMethodNotSupportedException)e);
        }else if(e instanceof UnauthorizedException||e instanceof AuthorizationException){
            return Result.error("没有权限，请联系管理员授权");
        }else if(e instanceof DuplicateKeyException){
            return Result.error("数据库中已存在该记录");
        }else if(e instanceof DataIntegrityViolationException){
            return Result.error("执行数据库异常,违反了完整性例如：违反惟一约束、违反非空限制、字段内容超出长度等");
        }else if(e instanceof PoolException){
            return Result.error("Redis 连接异常!");
        }else{
            return Result.error("操作失败，" + e.getMessage());
        }
    }

    private Result<?> httpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException e) {
        StringBuffer sb = new StringBuffer();
        sb.append("不支持");
        sb.append(e.getMethod());
        sb.append("请求方法，");
        sb.append("支持以下");
        String[] methods = e.getSupportedMethods();
        if (methods != null) {
            for (String str : methods) {
                sb.append(str);
                sb.append("、");
            }
        }
        log.error(sb.toString(), e);
        //return Result.error("没有权限，请联系管理员授权");
        return Result.error(sb.toString());
    }
}
