package com.moxa.sooth.module.base.role.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysUserRoleUserIdModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long userId;
}
