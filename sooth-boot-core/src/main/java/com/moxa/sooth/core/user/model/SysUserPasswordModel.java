package com.moxa.sooth.core.user.model;

import lombok.Data;

@Data
public class SysUserPasswordModel {
    private String username;
    private String oldPassword;
    private String password;
    private String confirmPassword;
}
