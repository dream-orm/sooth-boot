package com.moxa.sooth.core.permission.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysPermissionMenuTypeModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Integer menuType;

}
