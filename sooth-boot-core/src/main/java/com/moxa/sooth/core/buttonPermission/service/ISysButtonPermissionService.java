package com.moxa.sooth.core.buttonPermission.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.buttonPermission.table.SysButtonPermission;

import java.util.List;
import java.util.Set;

public interface ISysButtonPermissionService extends IService<SysButtonPermission, SysButtonPermission> {

    void saveButtonPermission(Long roleId, List<Long> buttonIdList);

    Set<String> getPermCodes(Long id);
}
