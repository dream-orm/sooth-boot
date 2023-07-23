package com.moxa.sooth.module.base.core.entity;

import com.moxa.dream.system.annotation.Ignore;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseDict implements Serializable {
    private static final long serialVersionUID = 1L;
    @Ignore
    private Map<String, Object> dict = new HashMap<>();

    public void put(String key, Object value) {
        dict.put(key, value);
    }

    public Object get(String key) {
        return dict.get(key);
    }

    public Map<String, Object> getDict() {
        return dict;
    }
}
