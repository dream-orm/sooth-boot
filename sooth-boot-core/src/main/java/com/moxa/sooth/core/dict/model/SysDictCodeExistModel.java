package com.moxa.sooth.core.dict.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.EqCondition;
import com.moxa.dream.template.condition.NeqCondition;
import lombok.Data;

@Data
public class SysDictCodeExistModel {
    @Conditional(value = EqCondition.class,filterNull = false)
    private String dictCode;
}
