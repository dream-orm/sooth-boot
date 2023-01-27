package com.moxa.sooth.core.buttonPermission.mapper.provider;

public class SysButtonPermissionProvider {

    public String getPermCode() {
        return "SELECT\n" +
                "\tconcat(sys_menu.url,'/',sys_button_permission.type)\n" +
                "FROM\n" +
                "\tsys_button_permission\n" +
                "\tINNER JOIN sys_menu ON sys_button_permission.menu_id = sys_menu.id\n" +
                "\tINNER JOIN sys_role_permission on sys_menu.id=sys_role_permission.permission_id " +
                " and sys_button_permission.role_id=sys_role_permission.role_id\n" +
                "\tINNER JOIN sys_role on sys_role_permission.role_id=sys_role.id\n" +
                "\tINNER JOIN sys_user_role on  sys_role.id=sys_user_role.role_id\n" +
                "\tinner JOIN sys_user on sys_user_role.user_id=sys_user.id" +
                "\tWHERE sys_user.id=@?(userId)";
    }
}
