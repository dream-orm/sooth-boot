package com.moxa.sooth.core.role.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.PageQuery;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.role.mapper.provider.SysUserRoleMapperProvider;
import com.moxa.sooth.core.role.model.SysUserRoleGroupByRoleIdModel;
import com.moxa.sooth.core.role.view.SysUserRoleView;

import java.util.List;

@Mapper(SysUserRoleMapperProvider.class)
public interface SysUserRoleMapper {
    @PageQuery
    List<SysUserRoleView> getUserByRoleId(@Param("model") SysUserRoleGroupByRoleIdModel userRoleGroupByRoleIdModel, @Param("page") Page page);
}
