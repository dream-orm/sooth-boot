package com.moxa.sooth.core.user.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
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
    private List<String> deptIds;
}
