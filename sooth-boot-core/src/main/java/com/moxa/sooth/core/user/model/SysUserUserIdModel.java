package com.moxa.sooth.core.user.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysUserUserIdModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private String username;
}
