package com.moxa.sooth.code.template.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * 数据表
 *
 * @author 阿沐 babamu@126.com
 */
@Data
@Table("gen_template_group")
public class $GenTemplateGroup {
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 表名
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;

}
