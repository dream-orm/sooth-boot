package com.moxa.sooth.module.base.dict.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysDictCodeExistModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private String code;
}
