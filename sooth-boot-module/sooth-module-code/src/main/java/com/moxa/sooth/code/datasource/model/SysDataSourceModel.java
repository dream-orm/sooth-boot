package com.moxa.sooth.code.datasource.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class SysDataSourceModel {
    @Conditional(ContainsCondition.class)
    private String name;
}
