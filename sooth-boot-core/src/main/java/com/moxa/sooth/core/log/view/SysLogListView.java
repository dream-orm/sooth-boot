package com.moxa.sooth.core.log.view;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
import com.moxa.sooth.core.log.table.$SysLog;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysLog.class)
public class SysLogListView extends BaseDict {
    /**
     * id
     */
    private Long id;

    /**
     * 耗时
     */
    private Long costTime;

    /**
     * IP
     */
    private String ip;

    /**
     * 操作人用户名称
     */
    private String realname;

    private String bizModule;

    private String description;

    @Dict(dicCode = "log_type")
    @Extract(DictExtractor.class)
    private String logType;

    @Extract(DictExtractor.class)
    @Dict(dicCode = "success_status")
    private Integer status;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.util.Date createTime;
}
