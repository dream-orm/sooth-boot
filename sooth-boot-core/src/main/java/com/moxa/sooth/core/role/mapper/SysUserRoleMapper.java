package com.moxa.sooth.core.role.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.PageQuery;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.core.role.view.SysUserRoleView;

import java.util.List;

@Mapper
public interface SysUserRoleMapper {
    @PageQuery
    @Sql("select sys_user_role.id,@all(sys_user) from sys_user_role left join sys_user on sys_user_role.user_id=sys_user.id where role_id=@$(roleId)")
    List<SysUserRoleView> getUserByRoleId(@Param("roleId") String roleId, @Param("page") Page page);
}
