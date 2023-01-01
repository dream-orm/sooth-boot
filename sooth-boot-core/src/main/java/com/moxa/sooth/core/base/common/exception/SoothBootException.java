package com.moxa.sooth.core.base.common.exception;


public class SoothBootException extends RuntimeException {

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
