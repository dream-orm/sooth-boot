package com.moxa.sooth.module.base.button.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysButtonModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long menuId;
}
