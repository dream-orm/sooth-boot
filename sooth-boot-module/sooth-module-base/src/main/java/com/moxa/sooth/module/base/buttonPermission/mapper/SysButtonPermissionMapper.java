package com.moxa.sooth.module.base.buttonPermission.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.sooth.module.base.buttonPermission.mapper.provider.SysButtonPermissionProvider;

import java.util.Set;

@Mapper(SysButtonPermissionProvider.class)
public interface SysButtonPermissionMapper {
    Set<String> getPermCodes(Long userId);
}
