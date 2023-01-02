package com.moxa.sooth.core.dept.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysUserDeptUserIdModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long userId;
}
