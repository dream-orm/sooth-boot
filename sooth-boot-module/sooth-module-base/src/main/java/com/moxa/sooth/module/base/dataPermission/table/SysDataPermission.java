package com.moxa.sooth.module.base.dataPermission.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import com.moxa.sooth.module.base.core.dream.annotation.Unique;
import lombok.Data;

import java.sql.Types;

@Data
@Table("sys_data_permission")
public class SysDataPermission {
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 角色id
     */
    @Unique(msg = "角色id已存在")
    @Column(value = "role_id", jdbcType = Types.BIGINT)
    private Long roleId;
    /**
     * 数据权限
     */
    @Column(value = "permission_code", jdbcType = Types.INTEGER)
    private Integer permissionCode;
    /**
     * 指定部门
     */
    @Column(value = "dept_ids", jdbcType = Types.LONGNVARCHAR)
    private Long[] deptIds;

}
