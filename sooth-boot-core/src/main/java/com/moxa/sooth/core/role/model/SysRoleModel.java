package com.moxa.sooth.core.role.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;

@Data
public class SysRoleModel {
    @Conditional(ContainsCondition.class)
    private String roleName;
    @Conditional(ContainsCondition.class)
    private String roleCode;
}
