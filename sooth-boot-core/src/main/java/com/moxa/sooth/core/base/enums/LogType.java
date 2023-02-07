package com.moxa.sooth.core.base.enums;

public enum LogType implements EnumCode<String> {
    AUTH("auth"), OPERATE("operate"), ERROR("error");
    private String code;

    LogType(String code) {
        this.code = code;
    }

    @Override
    public String getCode() {
        return code;
    }
}
