package com.moxa.sooth.module.base.role.mapper.provider;

public class SysUserRoleMapperProvider {
    public String getUserByRoleId() {
        return "select sys_user_role.id,@all(sys_user) from sys_user_role " +
                "left join sys_user on sys_user_role.user_id=sys_user.id " +
                "where @not(role_id=@?(model.roleId) " +
                "and sys_user.username like concat('%',@?(model.username),'%') " +
                "and sys_user.realname like concat('%',@?(model.realname),'%')" +
                ")";
    }
}
