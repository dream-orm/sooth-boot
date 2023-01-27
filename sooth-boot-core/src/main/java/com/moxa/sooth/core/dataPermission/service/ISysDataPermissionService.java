package com.moxa.sooth.core.dataPermission.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.dataPermission.table.SysDataPermission;

public interface ISysDataPermissionService extends IService<SysDataPermission, SysDataPermission> {

    SysDataPermission getDataPermission(Long userId);
}
