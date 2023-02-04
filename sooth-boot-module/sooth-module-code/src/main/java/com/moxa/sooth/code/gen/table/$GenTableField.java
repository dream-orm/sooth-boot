package com.moxa.sooth.code.gen.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

@Data
@Table("gen_table_field")
public class $GenTableField {
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 表ID
     */
    @Column(value = "table_id", jdbcType = Types.BIGINT)
    private Long tableId;
    /**
     * 字段名称
     */
    @Column(value = "column_name", jdbcType = Types.VARCHAR)
    private String columnName;
    /**
     * 排序
     */
    @Column(value = "order_no", jdbcType = Types.INTEGER)
    private Integer orderNo;
    /**
     * 字段类型
     */
    @Column(value = "column_type", jdbcType = Types.VARCHAR)
    private String columnType;
    /**
     * 字段类型
     */
    @Column(value = "type_name", jdbcType = Types.VARCHAR)
    private String typeName;
    /**
     * 字段说明
     */
    @Column(value = "column_comment", jdbcType = Types.VARCHAR)
    private String columnComment;
    /**
     * 属性名
     */
    @Column(value = "attr_name", jdbcType = Types.VARCHAR)
    private String attrName;
    /**
     * 属性类型
     */
    @Column(value = "attr_type", jdbcType = Types.VARCHAR)
    private String attrType;
    /**
     * 主键 0：否  1：是
     */
    @Column(value = "primary_pk", jdbcType = Types.TINYINT)
    private boolean primaryPk;

}
