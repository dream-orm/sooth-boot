package com.moxa.sooth.code.gen.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * 表字段
 *
 * @author 阿沐 babamu@126.com
 */
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
    @Column(value = "sort", jdbcType = Types.INTEGER)
    private Integer sort;
    /**
     * 字段类型
     */
    @Column(value = "column_type", jdbcType = Types.INTEGER)
    private Integer columnType;
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
     * 属性包名
     */
    @Column(value = "package_name", jdbcType = Types.VARCHAR)
    private String packageName;
    /**
     * 自动填充
     */
    @Column(value = "auto_fill", jdbcType = Types.VARCHAR)
    private String autoFill;
    /**
     * 主键 0：否  1：是
     */
    @Column(value = "primary_pk", jdbcType = Types.BOOLEAN)
    private boolean primaryPk;
    /**
     * 基类字段 0：否  1：是
     */
    @Column(value = "base_field", jdbcType = Types.BOOLEAN)
    private boolean baseField;
    /**
     * 表单项 0：否  1：是
     */
    @Column(value = "form_item", jdbcType = Types.BOOLEAN)
    private boolean formItem;
    /**
     * 表单必填 0：否  1：是
     */
    @Column(value = "form_required", jdbcType = Types.BOOLEAN)
    private boolean formRequired;
    /**
     * 表单类型
     */
    @Column(value = "form_type", jdbcType = Types.VARCHAR)
    private String formType;
    /**
     * 表单字典类型
     */
    @Column(value = "form_dict", jdbcType = Types.VARCHAR)
    private String formDict;
    /**
     * 表单效验
     */
    @Column(value = "form_validator", jdbcType = Types.VARCHAR)
    private String formValidator;
    /**
     * 列表项 0：否  1：是
     */
    @Column(value = "grid_item", jdbcType = Types.BOOLEAN)
    private boolean gridItem;
    /**
     * 列表排序 0：否  1：是
     */
    @Column(value = "grid_sort", jdbcType = Types.BOOLEAN)
    private boolean gridSort;
    /**
     * 查询项 0：否  1：是
     */
    @Column(value = "query_item", jdbcType = Types.BOOLEAN)
    private boolean queryItem;
    /**
     * 查询方式
     */
    @Column(value = "query_type", jdbcType = Types.VARCHAR)
    private String queryType;
    /**
     * 查询表单类型
     */
    @Column(value = "query_form_type", jdbcType = Types.VARCHAR)
    private String queryFormType;
    /**
     * 查询字典类型
     */
    @Column(value = "query_dict", jdbcType = Types.VARCHAR)
    private String queryDict;
}
