package com.moxa.sooth.code.gen.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.gen.table.$GenTableField;
import lombok.Data;

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
    private Integer orderNo;
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
     * 主键 0：否  1：是
     */
    private boolean primaryPk;
}
