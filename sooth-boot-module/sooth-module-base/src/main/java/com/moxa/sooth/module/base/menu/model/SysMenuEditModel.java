package com.moxa.sooth.module.base.menu.model;

import lombok.Data;

import java.util.List;

@Data
public class SysMenuEditModel {
    private Long roleId;
    private List<Long> permissionIds;
}
