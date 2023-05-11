package com.moxa.sooth.core.role.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysUserRoleExistModel {
    @Conditional(value = EqCondition.class, nullFlag = false)
    private Long roleId;
    @Conditional(value = EqCondition.class, nullFlag = false)
    private Long userId;
}