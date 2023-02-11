package com.moxa.sooth.core.base.util;

import com.moxa.sooth.core.base.entity.LoginUser;
import org.apache.shiro.SecurityUtils;

public class ClientUtil {
    private static LoginUser loginUser;

    public static LoginUser getLoginUser() {
        if (loginUser == null) {
            loginUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        }
        return loginUser;
    }

    public static void setLoginUser(LoginUser loginUser) {
        ClientUtil.loginUser = loginUser;
    }
}
