package com.moxa.sooth.core.base.common.system.query;

import com.moxa.sooth.core.base.common.util.oConvertUtils;

/**
 * 查询链接规则
 *
 * @Author Sunjianlei
 */
public enum MatchTypeEnum {

    /**
     * 查询链接规则 AND
     */
    AND("AND"),
    /**
     * 查询链接规则 OR
     */
    OR("OR");

    private String value;

    MatchTypeEnum(String value) {
        this.value = value;
    }

    public static MatchTypeEnum getByValue(Object value) {
        if (oConvertUtils.isEmpty(value)) {
            return null;
        }
        return getByValue(value.toString());
    }

    public static MatchTypeEnum getByValue(String value) {
        if (oConvertUtils.isEmpty(value)) {
            return null;
        }
        for (MatchTypeEnum val : values()) {
            if (val.getValue().toLowerCase().equals(value.toLowerCase())) {
                return val;
            }
        }
        return null;
    }

    public String getValue() {
        return value;
    }
}
