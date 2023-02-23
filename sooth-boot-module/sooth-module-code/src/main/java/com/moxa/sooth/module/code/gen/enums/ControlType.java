package com.moxa.sooth.module.code.gen.enums;

public enum ControlType {
    INPUT("input"),
    NUMBER("number"),
    PASSWORD("password"),
    SELECT("select"),
    DATE("date");
    private String value;

    ControlType(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
