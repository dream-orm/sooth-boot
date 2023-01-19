package com.moxa.sooth.core.role.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.InCondition;
import lombok.Data;

import java.util.List;

@Data
public class SysRoleModel {
    @Conditional(ContainsCondition.class)
    private String roleName;
    @Conditional(ContainsCondition.class)
    private String roleCode;
    @Conditional(InCondition.class)
    private List<Long> deptId;
}
