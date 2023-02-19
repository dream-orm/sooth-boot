package com.moxa.sooth.module.quartz.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.quartz.table.SysQuartz;
import lombok.Data;

@Data
@View(SysQuartz.class)
public class SysQuartzLV {
    /**
     *
     */
    private Long id;

    /**
     * 任务名
     */
    private String name;

    /**
     * cron表达式
     */
    private String cron;

    /**
     * 参数
     */
    private String parameter;

    /**
     * 描述
     */
    private String description;

    /**
     * 状态 0未运行 -1运行
     */
    private Integer status;

    /**
     * 删除状态
     */
    private Integer delFlag;
}
