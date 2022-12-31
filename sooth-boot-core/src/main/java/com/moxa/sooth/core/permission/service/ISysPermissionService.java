package com.moxa.sooth.core.permission.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.permission.model.SysPermissionModel;
import com.moxa.sooth.core.permission.view.SysPermission;

import java.util.List;

public interface ISysPermissionService extends IService<SysPermission, SysPermission> {

    @Override
    List<Object> batchInsert(List<SysPermission> sysPermissions);

    List<SysPermission> selectAuths(String username);

    List<SysPermission> selectTree(SysPermissionModel sysPermissionModel);
}