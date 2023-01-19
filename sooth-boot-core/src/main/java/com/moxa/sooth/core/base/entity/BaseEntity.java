package com.moxa.sooth.core.base.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.dream.template.annotation.WrapType;
import com.moxa.dream.template.wrap.DateWrapper;
import com.moxa.sooth.core.base.dream.wrap.UserWrapper;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

@Data
public abstract class BaseEntity extends BaseDict {
    /**
     * 创建人
     */
    @Wrap(value = UserWrapper.class, type = WrapType.INSERT)
    protected String createBy;
    /**
     * 创建时间
     */
    @Wrap(value = DateWrapper.class, type = WrapType.INSERT)
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    protected java.util.Date createTime;
    /**
     * 更新人
     */
    @Wrap(value = UserWrapper.class, type = WrapType.UPDATE)
    protected String updateBy;
    /**
     * 更新时间
     */
    @Wrap(value = DateWrapper.class, type = WrapType.UPDATE)
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    protected java.util.Date updateTime;

}
