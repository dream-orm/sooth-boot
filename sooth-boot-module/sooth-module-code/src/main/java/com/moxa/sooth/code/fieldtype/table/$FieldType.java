package com.moxa.sooth.code.fieldtype.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * 【请填写功能名称】  gen_field_type
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("gen_field_type")
public class $FieldType {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.INTEGER)
    private Integer id;
    /**
     * 字段类型
     */
    @Column(value = "column_type", jdbcType = Types.VARCHAR)
    private String columnType;
    /**
     * 属性类型
     */
    @Column(value = "attr_type", jdbcType = Types.VARCHAR)
    private String attrType;
}
