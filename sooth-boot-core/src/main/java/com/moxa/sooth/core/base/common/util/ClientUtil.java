package com.moxa.sooth.core.base.common.util;

import com.moxa.sooth.core.base.common.system.vo.LoginUser;
import com.moxa.sooth.core.user.view.SysUser;
import org.apache.shiro.SecurityUtils;

public class ClientUtil {
    public static SysUser getLoginUser() {
        return (SysUser) SecurityUtils.getSubject().getPrincipal();
    }
}