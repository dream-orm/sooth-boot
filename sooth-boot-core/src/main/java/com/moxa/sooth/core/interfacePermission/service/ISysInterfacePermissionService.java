package com.moxa.sooth.core.interfacePermission.service;


import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.interfacePermission.table.SysInterfacePermission;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface ISysInterfacePermissionService extends IService<SysInterfacePermission, SysInterfacePermission> {
    List<Map<String, Object>> listInterfacePermissionTree();

    Set<String> getPermissionUrls(Long userId);

    List<SysInterfacePermission> getPermissions(Long roleId);

    void saveInterfacePermission(Long roleId, List<String> interfacePermissionList);
}
