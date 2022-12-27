package com.moxa.sooth.user.view;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.user.table.$SysTenant;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 租户信息
 *
 * @author: jeecg-boot
 */
@Data
@View($SysTenant.class)
public class SysTenant extends BaseEntity {

    /**
     * 编码
     */
    private Integer id;

    /**
     * 名称
     */
    private String name;


    /**
     * 开始时间
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date beginDate;

    /**
     * 结束时间
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endDate;

    /**
     * 状态 1正常 0冻结
     */
    @Dict(dicCode = "tenant_status")
    @Extract(DictExtractor.class)
    private Integer status;

}
