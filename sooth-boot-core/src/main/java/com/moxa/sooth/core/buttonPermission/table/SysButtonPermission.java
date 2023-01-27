package com.moxa.sooth.core.buttonPermission.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import com.moxa.sooth.core.base.dream.annotation.Unique;
import lombok.Data;

import java.sql.Types;

@Data
@Table("sys_button_permission")
public class SysButtonPermission {
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.VARCHAR)
    private String id;
    /**
     * 角色id
     */
    @Column(value = "role_id", jdbcType = Types.BIGINT)
    private Long roleId;
    /**
     * 数据权限
     */
    @Column(value = "menu_id", jdbcType = Types.BIGINT)
    private Long menuId;
    /**
     * 按钮类型
     */
    @Column(value = "type", jdbcType = Types.VARCHAR)
    private String type;

}
