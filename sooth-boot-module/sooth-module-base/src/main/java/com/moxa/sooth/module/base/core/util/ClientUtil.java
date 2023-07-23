package com.moxa.sooth.module.base.core.util;

import com.moxa.sooth.module.base.core.entity.LoginUser;
import org.apache.shiro.SecurityUtils;

public class ClientUtil {

    public static LoginUser getLoginUser() {
        return (LoginUser) SecurityUtils.getSubject().getPrincipal();
    }
}
