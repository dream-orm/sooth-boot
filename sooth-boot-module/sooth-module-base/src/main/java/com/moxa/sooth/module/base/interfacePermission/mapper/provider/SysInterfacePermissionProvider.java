package com.moxa.sooth.module.base.interfacePermission.mapper.provider;


public class SysInterfacePermissionProvider {
    public String getPermissionUrls() {
        return "SELECT DISTINCT " +
                " url  " +
                "FROM " +
                " sys_user " +
                " INNER JOIN sys_user_role ON sys_user.id = sys_user_role.user_id " +
                " INNER JOIN sys_role ON sys_user_role.role_id = sys_role. " +
                " ID INNER JOIN sys_interface_permission ON sys_role.id = sys_interface_permission.role_id " +
                " WHERE sys_user.id =@?(userId)";
    }
}
