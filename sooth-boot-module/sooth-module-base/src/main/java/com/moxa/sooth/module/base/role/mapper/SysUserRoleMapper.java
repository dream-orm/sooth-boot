package com.moxa.sooth.module.base.role.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.PageQuery;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.module.base.role.mapper.provider.SysUserRoleMapperProvider;
import com.moxa.sooth.module.base.role.model.SysUserRoleGroupByRoleIdModel;
import com.moxa.sooth.module.base.role.view.SysUserRoleView;

import java.util.List;

@Mapper(SysUserRoleMapperProvider.class)
public interface SysUserRoleMapper {
    @PageQuery
    List<SysUserRoleView> getUserByRoleId(@Param("model") SysUserRoleGroupByRoleIdModel userRoleGroupByRoleIdModel, @Param("page") Page page);
}
