package com.moxa.sooth.quartz.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.dream.template.annotation.WrapType;
import com.moxa.dream.template.wrap.ZeroWrapper;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.quartz.table.$QuartzJob;
import lombok.Data;

@Data
@View($QuartzJob.class)
public class QuartzJob extends BaseEntity {
    /**
     * id
     */
    private Long id;
    /**
     * 任务类名
     */

    private String jobClassName;
    /**
     * cron表达式
     */

    private String cronExpression;
    /**
     * 参数
     */

    private String parameter;
    /**
     * 描述
     */

    private String description;

    @Dict(dicCode = "run_status")
    @Extract(DictExtractor.class)
    @Wrap(value = ZeroWrapper.class, type = WrapType.INSERT)
    private Integer status;

    /**
     * 删除状态
     */
    @Wrap(value = ZeroWrapper.class, type = WrapType.INSERT)
    private Integer delFlag;

}
