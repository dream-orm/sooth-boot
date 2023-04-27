package com.moxa.sooth.program.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.template.annotation.Conditional;
import com.moxa.dream.template.annotation.Order;
import com.moxa.dream.template.annotation.Sort;
import com.moxa.dream.template.condition.BetweenCondition;
import com.moxa.dream.template.condition.ContainsCondition;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Types;
import java.util.Date;
import java.util.List;

@Data
public class ProgramInfoModel {
    /**
     * 机器名称
     */
    @Conditional(ContainsCondition.class)
    private String machineName;

    /**
     * 程序名称
     */
    @Conditional(ContainsCondition.class)
    private String programName;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Sort(Order.DESC)
    @Conditional(BetweenCondition.class)
    private List<Date> deadline;
}