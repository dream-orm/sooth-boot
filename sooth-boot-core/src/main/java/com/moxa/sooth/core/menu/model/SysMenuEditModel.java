package com.moxa.sooth.core.menu.model;

import lombok.Data;

import java.util.List;

@Data
public class SysMenuEditModel {
    private Long roleId;
    private List<Long> permissionIds;
}
