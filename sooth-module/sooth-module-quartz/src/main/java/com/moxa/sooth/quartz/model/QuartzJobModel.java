package com.moxa.sooth.quartz.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class QuartzJobModel {
    @Conditional(ContainsCondition.class)
    private String jobClassName;
    @Conditional(EqCondition.class)
    private Integer status;
}
