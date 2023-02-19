package com.moxa.sooth.module.base.interfacePermission.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

@Data
@Table("sys_interface_permission")
public class SysInterfacePermission {
    /**
     * 主键id
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
     * 接口url
     */
    @Column(value = "url", jdbcType = Types.VARCHAR)
    private String url;


}
