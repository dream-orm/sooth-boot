package com.moxa.sooth.code.gen.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class GenTableExistModel {
    @Conditional(value = EqCondition.class, nullFlag = false)
    private String tableName;

}
