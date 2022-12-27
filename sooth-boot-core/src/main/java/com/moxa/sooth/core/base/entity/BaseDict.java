package com.moxa.sooth.core.base.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.moxa.dream.system.annotation.Ignore;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseDict implements Serializable {
    private static final long serialVersionUID = 1L;
    @TableField(exist = false)
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
