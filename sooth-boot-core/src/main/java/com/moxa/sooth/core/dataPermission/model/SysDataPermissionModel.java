package com.moxa.sooth.core.dataPermission.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import lombok.Data;

@Data
public class SysDataPermissionModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long roleId;
}
