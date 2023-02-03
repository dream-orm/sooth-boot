package com.moxa.sooth.core.buttonPermission.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

@Data
@Table("sys_button_permission")
public class SysButtonPermission {
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
     * 按钮id
     */
    @Column(value = "button_id", jdbcType = Types.BIGINT)
    private Long buttonId;


}
