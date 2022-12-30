package com.moxa.sooth.core.user.model;

import com.moxa.dream.system.annotation.Join;
import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.InCondition;
import lombok.Data;

import java.util.List;

@Data
public class SysUserModel {
    @Conditional(ContainsCondition.class)
    private String username;
    @Conditional(ContainsCondition.class)
    private String realname;
    @Conditional(ContainsCondition.class)
    private String phone;
    @Conditional(value = InCondition.class,table = "sys_dept")
    private List<String> deptId;
}
