package com.moxa.sooth.module.code.fieldtype.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.code.fieldtype.table.$FieldType;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

@Data
@View($FieldType.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class FieldType extends BaseDict {
    /**
     * id
     */
    private Integer id;
    /**
     * 字段类型
     */
    private String columnType;
    /**
     * 属性类型
     */
    private String attrType;
}
