package com.moxa.sooth.code.template.view;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

@Data
@Table("gen_template_group")
public class GenTemplateGroup {
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 表名
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;

}
