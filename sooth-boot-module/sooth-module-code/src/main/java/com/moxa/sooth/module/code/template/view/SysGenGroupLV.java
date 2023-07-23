package com.moxa.sooth.module.code.template.view;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.code.template.table.SysGenGroup;
import lombok.Data;

import java.sql.Types;

@Data
@View(SysGenGroup.class)
public class SysGenGroupLV {
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 表名
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;

}
