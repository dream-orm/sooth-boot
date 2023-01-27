package com.moxa.sooth.core.buttonPermission.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysButtonPermissionModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long roleId;
}
