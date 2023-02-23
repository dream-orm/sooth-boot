package com.moxa.sooth.module.quartz.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.dream.template.wrap.ZeroWrapper;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.quartz.table.SysQuartz;
import lombok.Data;

@Data
@View(SysQuartz.class)
public class SysQuartzEV extends BaseEntity {
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
     * 删除状态
     */
    @Wrap(ZeroWrapper.class)
    private Integer delFlag;
}
