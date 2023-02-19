package com.moxa.sooth.module.base.core.dream.wrap;

import com.moxa.dream.template.wrap.Wrapper;
import com.moxa.sooth.module.base.core.util.SecurityUtil;

public class PasswordWrapper implements Wrapper {
    @Override
    public Object wrap(Object value) {
        if (value == null) {
            return null;
        }
        value = SecurityUtil.encrypt(value.toString());
        return value;
    }
}
