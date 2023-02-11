package com.moxa.sooth.core.interfacePermission.mapper;


import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.core.interfacePermission.mapper.provider.SysInterfacePermissionProvider;
import com.moxa.sooth.core.interfacePermission.table.SysInterfacePermission;

import java.util.List;
import java.util.Set;

@Mapper(SysInterfacePermissionProvider.class)
public interface SysInterfacePermissionMapper {
    Set<String> getPermissionUrls(Long userId);

    @Sql("select @all() from sys_interface_permission where role_id=@?(roleId)")
    List<SysInterfacePermission> getPermissions(Long roleId);
}
