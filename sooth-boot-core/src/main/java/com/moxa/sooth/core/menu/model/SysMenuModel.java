package com.moxa.sooth.core.menu.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.annotation.Order;
import com.moxa.dream.template.annotation.Sort;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class SysMenuModel {
    @Conditional(ContainsCondition.class)
    private String name;
    @Sort(value = Order.ASC, order = 1)
    private String parentId;

    @Sort(value = Order.ASC, order = 2)
    private Double sortNo;


}
