package com.moxa.sooth.core.permission.mapper.provider;

public class SysPermissionProvider {
    public String selectAuths() {
        String sql = "SELECT h.* FROM (\n" +
                "        SELECT @all(sys_permission),p.perms,p.sort_no\n" +
                "        FROM sys_permission p\n" +
                "        WHERE exists(\n" +
                "        select a.id from sys_role_permission a\n" +
                "        inner join sys_role b on a.role_id = b.id\n" +
                "        inner join sys_user_role c on c.role_id = b.id\n" +
                "        inner join sys_user d on d.id = c.user_id\n" +
                "        where p.id = a.permission_id AND d.username = @$(username)\n" +
                "        )\n" +
                "        UNION\n" +
                "        SELECT @all(sys_permission),p.perms,p.sort_no\n" +
                "        FROM sys_permission p\n" +
                "        WHERE exists(\n" +
                "        select a.id from sys_depart_role_permission a\n" +
                "        inner join sys_depart_role b on a.role_id = b.id\n" +
                "        inner join sys_depart_role_user c on c.drole_id = b.id\n" +
                "        join sys_user d on d.id = c.user_id\n" +
                "        where p.id = a.permission_id AND d.username = @$(username)\n" +
                "        )\n" +
                "        ) h order by h.sort_no ASC";
        return sql;
    }
}
