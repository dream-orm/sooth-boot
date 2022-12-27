package com.moxa.sooth.core.base.common.exception;

/**
 * @Description: jeecg-boot自定义401异常
 * @author: jeecg-boot
 */
public class SoothBoot401Exception extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public SoothBoot401Exception(String message) {
        super(message);
    }

    public SoothBoot401Exception(Throwable cause) {
        super(cause);
    }

    public SoothBoot401Exception(String message, Throwable cause) {
        super(message, cause);
    }
}
