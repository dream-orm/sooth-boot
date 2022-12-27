package com.moxa.sooth.core.user.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.core.user.view.SysUser;

@Mapper
public interface SysUserMapper {
    @Sql("select @all() from sys_user where username=@$(username)")
    SysUser selectOneUser(String username);
}
