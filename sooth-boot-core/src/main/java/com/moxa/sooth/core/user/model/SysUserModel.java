package com.moxa.sooth.core.user.model;

import com.moxa.dream.system.annotation.Join;
import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.InCondition;
import lombok.Data;

import java.util.List;

@Data
public class SysUserModel {
    private String username;
    private String realname;
    private String phone;
    private List<String> deptIds;
}
