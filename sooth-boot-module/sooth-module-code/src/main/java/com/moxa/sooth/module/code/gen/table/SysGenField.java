package com.moxa.sooth.module.code.gen.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

/**
 * @Description: 代码生成表字段
 * @Author: admin
 * @Date: 2023-02-21 22:49:17
 */
@Data
@Table("sys_gen_field")
public class SysGenField {


    /**
     * id
     */
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
     * 字段类型
     */
    @Column(value = "column_type", jdbcType = Types.VARCHAR)
    private String columnType;

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
     * 排序
     */
    @Column(value = "order_no", jdbcType = Types.INTEGER)
    private Integer orderNo;

    /**
     * 主键 0：否  1：是
     */
    @Column(value = "primary_pk", jdbcType = Types.SMALLINT)
    private Short primaryPk;

    /**
     * 列表页显示方式
     */
    @Column(value = "show_list_type", jdbcType = Types.VARCHAR)
    private String showListType;

    /**
     * 校验方式
     */
    @Column(value = "valid_type", jdbcType = Types.VARCHAR)
    private String validType;

    /**
     * 字典
     */
    @Column(value = "dict_code", jdbcType = Types.VARCHAR)
    private String dictCode;

    /**
     * 编辑页显示方式
     */
    @Column(value = "show_edit_type", jdbcType = Types.VARCHAR)
    private String showEditType;

    /**
     * 控件类型
     */
    @Column(value = "control_type", jdbcType = Types.VARCHAR)
    private String controlType;

    /**
     * 查询方式
     */
    @Column(value = "search_type", jdbcType = Types.VARCHAR)
    private String searchType;

}
