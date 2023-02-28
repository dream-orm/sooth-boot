package com.moxa.sooth.program.model;

import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.EqCondition;
import com.moxa.dream.template.condition.InCondition;
import lombok.Data;

import java.util.List;

@Data
public class ProgramMessagesModel {
    @Conditional(EqCondition.class)
    private String machineName;
    @Conditional(EqCondition.class)
    private String programName;
    @Conditional(ContainsCondition.class)
    private String message;
    @Conditional(InCondition.class)
    private List<String> status;
}