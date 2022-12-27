package com.moxa.sooth.datasource.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysDataSourceModel {
    @Conditional(ContainsCondition.class)
    private String name;
    @Conditional(EqCondition.class)
    private String dbType;
}
