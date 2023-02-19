package com.moxa.sooth.module.quartz.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.InCondition;
import lombok.Data;

import java.util.List;

@Data
public class SysQuartzModel {
    @Conditional(ContainsCondition.class)
    private String name;
    @Conditional(InCondition.class)
    private List<Integer> status;
}
