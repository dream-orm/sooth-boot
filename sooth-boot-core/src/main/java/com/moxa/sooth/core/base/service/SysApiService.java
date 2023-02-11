package com.moxa.sooth.core.base.service;


import com.moxa.sooth.core.base.entity.LoginUser;

public interface SysApiService {

    LoginUser getLoginUser(String username);

    String getDictItemName(String table, String name, String code, Object value);

}
