package com.moxa.sooth.module.base.core.exception;


public class SoothException extends RuntimeException {

    public SoothException(String message) {
        super(message);
    }

    public SoothException(Throwable cause) {
        super(cause);
    }

    public SoothException(String message, Throwable cause) {
        super(message, cause);
    }
}
