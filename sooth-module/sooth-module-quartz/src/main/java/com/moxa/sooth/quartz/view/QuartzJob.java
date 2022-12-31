package com.moxa.sooth.quartz.view;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.dream.template.annotation.WrapType;
import com.moxa.dream.template.wrap.ZeroWrapper;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.quartz.table.$QuartzJob;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Description: 定时任务在线管理
 * @Author: jeecg-boot
 * @Date: 2019-01-02
 * @Version: V1.0
 */
@Data
@View($QuartzJob.class)
public class QuartzJob extends BaseDict {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private String id;
    /**
     * 创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.util.Date createTime;
    /**
     * 删除状态
     */
    @Wrap(value = ZeroWrapper.class, type = WrapType.INSERT)
    private Integer delFlag;
    /**
     * 修改人
     */
    private String updateBy;
    /**
     * 修改时间
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.util.Date updateTime;
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
    /**
     * 状态 0正常 -1停止
     */

    @Dict(dicCode = "quartz_status")
    @Extract(DictExtractor.class)
    private Integer status;

}
