package com.moxa.sooth.core.base.entity;

import com.moxa.sooth.core.base.constant.CommonConstant;
import lombok.Data;

import java.io.Serializable;

@Data
public class Result<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 返回处理消息
     */

    private String message;

    /**
     * 返回代码
     */

    private Integer code;

    /**
     * 返回数据对象 data
     */

    private T result;

    private Result() {
    }

    public Result(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public static <T> Result<T> ok() {
        Result<T> r = new Result();
        r.code = CommonConstant.SC_OK_200;
        return r;
    }

    public static <T> Result<T> ok(T data, String msg) {
        Result<T> r = new Result();
        r.code = CommonConstant.SC_OK_200;
        r.result = data;
        r.message = msg;
        return r;
    }

    public static <T> Result<T> ok(T data) {
        Result<T> r = new Result();
        r.code = CommonConstant.SC_OK_200;
        r.result = data;
        return r;
    }

    public static <T> Result<T> error(String msg) {
        Result<T> r = new Result();
        r.code = CommonConstant.SC_INTERNAL_SERVER_ERROR_500;
        r.message = msg;
        return r;
    }


    public boolean isSuccess() {
        return code == CommonConstant.SC_OK_200;
    }
}
