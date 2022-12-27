package com.moxa.sooth.code.baseclass.view;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.dream.template.annotation.WrapType;
import com.moxa.dream.template.wrap.DateWrapper;
import com.moxa.sooth.code.baseclass.table.BaseClassTable;
import com.moxa.sooth.core.base.dream.UserWrapper;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Description: 基类管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Data
@View(BaseClassTable.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class BaseClass extends BaseDict {
    /**
     * id
     */

    private Long id;
    /**
     * 基类名称
     */


    private String name;
    /**
     * 基类包名
     */


    private String packageName;
    /**
     * 基类字段
     */


    private String fields;
    /**
     * 创建人
     */
    @Wrap(value = UserWrapper.class, type = WrapType.INSERT)
    private String createBy;
    /**
     * 创建时间
     */
    @Wrap(value = DateWrapper.class, type = WrapType.INSERT)
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.util.Date createTime;
    /**
     * 更新人
     */
    @Wrap(value = UserWrapper.class, type = WrapType.UPDATE)
    private String updateBy;
    /**
     * 更新时间
     */
    @Wrap(value = DateWrapper.class, type = WrapType.UPDATE)
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.util.Date updateTime;

}
