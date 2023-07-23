package com.moxa.sooth.module.base.menu.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysMenuTypeModel {
    @Conditional(value = EqCondition.class, nullFlag = false)
    private Integer menuType;

}
