package com.moxa.sooth.code.template.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class GenTemplateModel {
    @Conditional(EqCondition.class)
    private Long groupId;
}
