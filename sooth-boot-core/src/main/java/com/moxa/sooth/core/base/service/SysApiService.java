package com.moxa.sooth.core.base.service;


import com.moxa.sooth.core.user.view.SysUser;

import java.util.Set;

public interface SysApiService {

    SysUser selectOneUser(String username);

    void checkUserIsEffective(SysUser sysUser);

    String translateDict(String table, String name, String code, Object value);

    Set<String> selectRoles(String username);

    Set<String> selectAuths(String username);
}
