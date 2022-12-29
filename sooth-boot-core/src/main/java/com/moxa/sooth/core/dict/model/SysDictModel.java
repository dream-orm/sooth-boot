package com.moxa.sooth.core.dict.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class SysDictModel {
    @Conditional(ContainsCondition.class)
    private String dictCode;
    @Conditional(ContainsCondition.class)
    private String dictName;
}
