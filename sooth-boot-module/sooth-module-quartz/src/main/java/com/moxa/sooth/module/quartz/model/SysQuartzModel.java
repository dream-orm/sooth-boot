package com.moxa.sooth.module.quartz.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;


@Data
public class SysQuartzModel {
    @Conditional(ContainsCondition.class)
    private String name;
}
