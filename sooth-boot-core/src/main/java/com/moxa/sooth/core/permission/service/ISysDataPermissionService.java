package com.moxa.sooth.core.permission.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.permission.table.SysDataPermission;

public interface ISysDataPermissionService extends IService<SysDataPermission,SysDataPermission> {

    SysDataPermission getDataPermission(Long userId);
}
