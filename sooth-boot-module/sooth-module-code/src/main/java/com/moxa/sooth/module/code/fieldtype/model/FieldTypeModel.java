package com.moxa.sooth.module.code.fieldtype.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class FieldTypeModel {
    @Conditional(ContainsCondition.class)
    private String columnType;
    @Conditional(ContainsCondition.class)
    private String attrType;

}
