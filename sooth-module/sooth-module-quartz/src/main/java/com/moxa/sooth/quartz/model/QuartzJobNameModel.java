package com.moxa.sooth.quartz.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class QuartzJobNameModel {
    @Conditional(EqCondition.class)
    private String jobClassName;
}
