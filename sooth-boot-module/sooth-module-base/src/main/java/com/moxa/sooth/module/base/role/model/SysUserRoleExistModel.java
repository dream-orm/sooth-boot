package com.moxa.sooth.module.base.role.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysUserRoleExistModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long roleId;
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long userId;
}
