package com.moxa.sooth.core.permission.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.sooth.core.permission.mapper.provider.SysPermissionProvider;
import com.moxa.sooth.core.permission.view.SysPermission;

import java.util.List;

@Mapper(SysPermissionProvider.class)
public interface SysPermissionMapper {
    List<SysPermission> selectAuths(String username);

    List<SysPermission> getMenu(String username);

}
