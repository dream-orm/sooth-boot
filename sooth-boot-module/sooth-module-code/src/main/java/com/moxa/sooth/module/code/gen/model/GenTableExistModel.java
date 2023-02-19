package com.moxa.sooth.module.code.gen.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class GenTableExistModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private String tableName;

}
