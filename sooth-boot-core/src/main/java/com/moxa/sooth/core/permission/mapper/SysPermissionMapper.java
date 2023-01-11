package com.moxa.sooth.core.permission.mapper;

import com.alibaba.fastjson.JSONArray;
import com.moxa.dream.system.annotation.Mapper;
import com.moxa.sooth.core.permission.mapper.provider.SysPermissionProvider;
import com.moxa.sooth.core.permission.view.SysPermission;

import java.util.List;

@Mapper(SysPermissionProvider.class)
public interface SysPermissionMapper {
    List<SysPermission> selectAuths(String username);

    JSONArray getMenu(String username);

}
