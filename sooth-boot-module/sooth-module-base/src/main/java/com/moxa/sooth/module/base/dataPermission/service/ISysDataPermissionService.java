package com.moxa.sooth.module.base.dataPermission.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.dataPermission.table.SysDataPermission;

public interface ISysDataPermissionService extends IService<SysDataPermission, SysDataPermission> {

    SysDataPermission getDataPermission(Long userId);
}
