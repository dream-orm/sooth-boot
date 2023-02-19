package com.moxa.sooth.module.code.gen.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class GenTableModel {
    @Conditional(value = ContainsCondition.class)
    private String tableName;

}
