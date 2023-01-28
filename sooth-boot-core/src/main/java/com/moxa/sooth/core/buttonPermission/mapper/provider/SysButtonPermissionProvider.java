package com.moxa.sooth.core.buttonPermission.mapper.provider;

public class SysButtonPermissionProvider {

    public String getPermCode() {
        return "SELECT " +
                " concat(sys_menu.url,'/',sys_button.type) " +
                " FROM " +
                " sys_button_permission " +
                " INNER JOIN sys_button ON sys_button_permission.button_id = sys_button.id " +
                " INNER JOIN sys_menu ON sys_button.menu_id = sys_menu.id " +
                " INNER JOIN sys_role_permission on sys_menu.id=sys_role_permission.permission_id " +
                " and sys_button_permission.role_id=sys_role_permission.role_id " +
                " INNER JOIN sys_role on sys_role_permission.role_id=sys_role.id " +
                " INNER JOIN sys_user_role on  sys_role.id=sys_user_role.role_id " +
                " inner JOIN sys_user on sys_user_role.user_id=sys_user.id" +
                " WHERE sys_user.id=@?(userId)";
    }
}
