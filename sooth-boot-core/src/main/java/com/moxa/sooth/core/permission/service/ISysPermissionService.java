package com.moxa.sooth.core.permission.service;

import com.alibaba.fastjson.JSONArray;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.permission.model.SysPermissionEditModel;
import com.moxa.sooth.core.permission.model.SysPermissionModel;
import com.moxa.sooth.core.permission.view.SysPermission;

import java.util.List;

public interface ISysPermissionService extends IService<SysPermission, SysPermission> {

    List<SysPermission> selectAuths(String username);

    JSONArray getMenu(String username);

    List<SysPermission> selectTree(SysPermissionModel sysPermissionModel);

    void saveRolePermission(SysPermissionEditModel sysPermissionEditModel);
}
