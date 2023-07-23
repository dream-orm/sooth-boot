package com.moxa.sooth.module.code.gen.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.code.gen.table.SysGenField;
import lombok.Data;

@Data
@View(SysGenField.class)
public class SysGenFieldLV {


    /**
     * id
     */
    private Long id;

    /**
     * 表ID
     */
    private Long tableId;

    /**
     * 字段名称
     */
    private String columnName;

    /**
     * 字段类型
     */
    private String columnType;

    /**
     * 字段说明
     */
    private String columnComment;

    /**
     * 属性名
     */
    private String attrName;

    /**
     * 属性类型
     */
    private String attrType;

    /**
     * 排序
     */
    private Integer orderNo;

    /**
     * 主键 0：否  1：是
     */
    private boolean primaryPk;

    /**
     * 列表页显示方式
     */
    private String showListType;

    /**
     * 校验方式
     */
    private String validType;

    /**
     * 字典
     */
    private String dictCode;

    /**
     * 编辑页显示方式
     */
    private String showEditType;

    /**
     * 控件类型
     */
    private String controlType;

    /**
     * 查询方式
     */
    private String searchType;
}
