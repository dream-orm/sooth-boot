package com.moxa.sooth.core.base.util;

import com.moxa.sooth.core.base.entity.LoginUser;
import org.apache.shiro.SecurityUtils;

public class ClientUtil {
    public static LoginUser getLoginUser() {
        return (LoginUser) SecurityUtils.getSubject().getPrincipal();
    }
}
