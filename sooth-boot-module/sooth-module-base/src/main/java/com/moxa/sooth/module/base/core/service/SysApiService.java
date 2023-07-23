package com.moxa.sooth.module.base.core.service;


import com.moxa.sooth.module.base.core.entity.LoginUser;

public interface SysApiService {

    LoginUser getLoginUser(String username);

    String getDictItemName(String table, String name, String code, Object value);

}
