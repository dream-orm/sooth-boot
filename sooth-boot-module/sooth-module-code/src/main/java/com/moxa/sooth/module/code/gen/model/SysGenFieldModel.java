package com.moxa.sooth.module.code.gen.model;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.EqCondition;
import com.moxa.sooth.module.code.gen.table.SysGenField;
import lombok.Data;

@Data
@View(SysGenField.class)
public class SysGenFieldModel {
    @Conditional(value = EqCondition.class, filterNull = false)
    private Long tableId;
}
