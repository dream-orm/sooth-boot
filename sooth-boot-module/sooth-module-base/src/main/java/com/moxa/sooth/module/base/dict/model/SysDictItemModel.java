package com.moxa.sooth.module.base.dict.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.annotation.Order;
import com.moxa.dream.template.annotation.Sort;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysDictItemModel {
    @Conditional(value = EqCondition.class, nullFlag = false)
    private Long dictId;
    @Sort(Order.ASC)
    private Double orderNo;
}
