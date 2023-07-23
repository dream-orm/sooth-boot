package com.moxa.sooth.module.base.role.model;

import lombok.Data;

@Data
public class SysUserRoleGroupByRoleIdModel {
    private Long roleId;
    private String username;
    private String realname;
}
