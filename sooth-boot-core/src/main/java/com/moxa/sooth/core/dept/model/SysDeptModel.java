package com.moxa.sooth.core.dept.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.annotation.Order;
import com.moxa.dream.template.annotation.Sort;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class SysDeptModel {
    @Conditional(ContainsCondition.class)
    private String deptName;
    @Conditional(ContainsCondition.class)
    private String deptCode;
    @Sort(Order.ASC)
    private Double orderNo;
}
