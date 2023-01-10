package com.moxa.sooth.core.dept.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.core.base.annotation.Permission;
import com.moxa.sooth.core.dept.table.SysUserDept;

import java.util.List;

@Mapper
public interface SysUserDeptMapper {

    @Permission(false)
    @Sql("select @all() from sys_user_dept where user_id=@$(id)")
    List<SysUserDept> getDeptByUserId(@Param("id") Long id);
}
