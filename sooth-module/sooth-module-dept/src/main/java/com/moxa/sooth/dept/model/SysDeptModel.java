package com.moxa.sooth.dept.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.annotation.Order;
import com.moxa.dream.template.annotation.Sort;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class SysDeptModel {
    @Conditional(ContainsCondition.class)
    private String deptName;
    @Sort(Order.ASC)
    private Integer deptOrder;
}
