package com.moxa.sooth.module.base.role.model;

import lombok.Data;

import java.util.List;

@Data
public class SysUserRoleModel {
    private Long roleId;
    private List<Long> userIdList;
}
