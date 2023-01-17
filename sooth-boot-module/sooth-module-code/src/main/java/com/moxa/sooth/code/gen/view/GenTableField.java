package com.moxa.sooth.code.gen.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.gen.table.$GenTableField;
import lombok.Data;

/**
 * 表字段
 *
 * @author 阿沐 babamu@126.com
 */
@Data
@View($GenTableField.class)
public class GenTableField {
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
     * 排序
     */
    private Integer sort;
    /**
     * 字段类型
     */
    private Integer dataType;
    /**
     * 字段类型
     */
    private String typeName;
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
     * 主键 0：否  1：是
     */
    private boolean primaryPk;
    /**
     * 基类字段 0：否  1：是
     */
    private boolean baseField;
    /**
     * 表单项 0：否  1：是
     */
    private boolean formItem;
    /**
     * 表单类型
     */
    private String formType;
    /**
     * 表单字典类型
     */
    private String formDict;
    /**
     * 查询方式
     */
    private String queryType;
}
