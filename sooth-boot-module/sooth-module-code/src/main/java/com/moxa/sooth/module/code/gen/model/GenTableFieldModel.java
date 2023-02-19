package com.moxa.sooth.module.code.gen.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class GenTableFieldModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long tableId;

}
