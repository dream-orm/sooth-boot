package com.moxa.sooth.core.role.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;

import java.util.Set;

@Mapper
public interface SysRoleMapper {
    @Sql("select role_code from sys_role where id in (select role_id from sys_user_role where user_id = @?(userId))")
    Set<String> getRoles(Long userId);
}
