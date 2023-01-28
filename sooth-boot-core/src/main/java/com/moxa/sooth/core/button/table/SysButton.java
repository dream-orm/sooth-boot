package com.moxa.sooth.core.button.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

@Data
@Table("sys_button")
public class SysButton {
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 菜单id
     */
    @Column(value = "menu_id", jdbcType = Types.BIGINT)
    private Long menuId;
    /**
     * 按钮类型
     */
    @Column(value = "type", jdbcType = Types.VARCHAR)
    private String type;

}
