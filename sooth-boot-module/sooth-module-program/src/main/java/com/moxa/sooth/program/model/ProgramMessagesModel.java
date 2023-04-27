package com.moxa.sooth.program.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.annotation.Order;
import com.moxa.dream.template.annotation.Sort;
import com.moxa.dream.template.condition.BetweenCondition;
import com.moxa.dream.template.condition.ContainsCondition;
import com.moxa.dream.template.condition.EqCondition;
import com.moxa.dream.template.condition.InCondition;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

@Data
public class ProgramMessagesModel {
    @Conditional(value = ContainsCondition.class,or = true)
    private String machineName;
    @Conditional(value = ContainsCondition.class,or = true)
    private String programName;
    @Conditional(value = ContainsCondition.class,or = true)
    private String message;
    @Conditional(InCondition.class)
    private List<String> status;
    @Sort(Order.DESC)
    @Conditional(BetweenCondition.class)
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private List<Date> createTime;
}