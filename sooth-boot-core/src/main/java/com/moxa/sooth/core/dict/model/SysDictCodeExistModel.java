package com.moxa.sooth.core.dict.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysDictCodeExistModel {
    @Conditional(value = EqCondition.class, nullFlag = false)
    private String code;
}
