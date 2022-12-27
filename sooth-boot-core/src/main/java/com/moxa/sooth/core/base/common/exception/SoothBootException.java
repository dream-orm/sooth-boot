package com.moxa.sooth.core.base.common.exception;

/**
 * @Description: jeecg-boot自定义异常
 * @author: jeecg-boot
 */
public class SoothBootException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public SoothBootException(String message) {
        super(message);
    }

    public SoothBootException(Throwable cause) {
        super(cause);
    }

    public SoothBootException(String message, Throwable cause) {
        super(message, cause);
    }
}
