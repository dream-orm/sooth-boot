package com.moxa.sooth.core.permission.table;

import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import com.moxa.dream.system.annotation.Column;
import lombok.Data;

import java.sql.Types;
/**
 * 角色权限  sys_role_permission
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_role_permission")
public class SysRolePermission {
    /**
     *
     */
        @Id
    @Column(value = "id", jdbcType =Types.VARCHAR)
    private String id;
    /**
     *角色id
     */
    @Column(value = "role_id", jdbcType =Types.VARCHAR)
    private String roleId;
    /**
     *权限id
     */
    @Column(value = "permission_id", jdbcType =Types.VARCHAR)
    private String permissionId;
}
