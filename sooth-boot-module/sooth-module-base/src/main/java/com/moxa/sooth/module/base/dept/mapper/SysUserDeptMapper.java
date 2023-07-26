package com.moxa.sooth.module.base.dept.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Param;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.module.base.dept.table.SysUserDept;

import java.util.List;

@Mapper
public interface SysUserDeptMapper {

    @Sql("select @*() from sys_user_dept where user_id=@?(id)")
    List<SysUserDept> getDeptByUserId(@Param("id") Long id);
}
