package com.moxa.sooth.core.dataPermission.mapper;

import com.moxa.dream.system.annotation.Mapper;
import com.moxa.dream.system.annotation.Sql;
import com.moxa.sooth.core.dataPermission.table.SysDataPermission;

@Mapper
public interface SysDataPermissionMapper {
    @Sql("SELECT MAX(permission_code) AS permissionCode, GROUP_CONCAT(dept_ids) AS deptIds\n" +
            "FROM sys_data_permission\n" +
            "\tINNER JOIN sys_role ON sys_data_permission.role_id = sys_role.id\n" +
            "WHERE sys_role.id IN (\n" +
            "\tSELECT role_id\n" +
            "\tFROM sys_user_role\n" +
            "\tWHERE user_id = (\n" +
            "\t\tSELECT id\n" +
            "\t\tFROM sys_user\n" +
            "\t\twhere sys_user.id=@?(userId)\n" +
            "\t)\n" +
            ")")
    SysDataPermission getDataPermission(Long userId);
}
