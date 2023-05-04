package com.moxa.sooth.module.code.baseclass.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.validate.NotBlank;
import com.moxa.dream.template.annotation.validate.Unique;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.code.baseclass.table.SysBaseClass;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@View(SysBaseClass.class)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysBaseClassEV extends BaseEntity {
    /**
     * id
     */
    private Long id;
    /**
     * 基类全类名
     */
    @NotBlank(msg = "基类全类名不能为空")
    @Unique(msg = "基类全类名已存在")
    private String className;
    /**
     * 基类字段
     */
    private String[] fields;
}
