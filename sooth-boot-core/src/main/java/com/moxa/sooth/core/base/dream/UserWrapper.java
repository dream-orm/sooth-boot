package com.moxa.sooth.core.base.dream;

import com.moxa.dream.template.wrap.Wrapper;
import com.moxa.sooth.core.base.common.util.ClientUtil;

public class UserWrapper implements Wrapper {
    @Override
    public Object wrap(Object value) {
        if (value == null) {
            return ClientUtil.getLoginUser().getUsername();
        }
        return value;
    }
}
