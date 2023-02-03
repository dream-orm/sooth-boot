package com.moxa.sooth.core.buttonPermission.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.sooth.core.buttonPermission.mapper.provider.SysButtonPermissionProvider;

import java.util.List;

@Mapper(SysButtonPermissionProvider.class)
public interface SysButtonPermissionMapper {
    List<String> getPermCode(Long userId);
}
