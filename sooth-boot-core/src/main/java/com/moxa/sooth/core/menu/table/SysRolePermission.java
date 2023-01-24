package com.moxa.sooth.core.menu.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

@Data
@Table("sys_role_permission")
public class SysRolePermission {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 角色id
     */
    @Column(value = "role_id", jdbcType = Types.BIGINT)
    private Long roleId;
    /**
     * 权限id
     */
    @Column(value = "permission_id", jdbcType = Types.BIGINT)
    private Long permissionId;
}
