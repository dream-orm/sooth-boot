package com.moxa.sooth.core.permission.model;

import lombok.Data;

import java.util.List;

@Data
public class SysPermissionEditModel {
    private Long roleId;
    private List<Long> permissionIds;
}
