package com.moxa.sooth.core.permission.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.annotation.Order;
import com.moxa.dream.template.annotation.Sort;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysPermissionModel {
    @Conditional(ContainsCondition.class)
    private String name;
    @Sort(value = Order.ASC,order = 1)
    private String parentId;

    @Sort(value = Order.ASC,order = 2)
    private Double sortNo;


}
