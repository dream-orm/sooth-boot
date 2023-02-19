package com.moxa.sooth.module.base.core.entity;

import lombok.Data;

import java.util.Set;

@Data
public class LoginUser {
    private Long id;
    private String username;
    private String password;
    private String realname;
    private String avator;
    private Integer sex;
    private String phone;
    private Set<String> permissionUrls;
    private Set<String> roles;
    private Set<String> permCodes;
}
