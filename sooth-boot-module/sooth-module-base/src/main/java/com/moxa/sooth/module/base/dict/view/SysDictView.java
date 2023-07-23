package com.moxa.sooth.module.base.dict.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.dream.template.wrap.ZeroWrapper;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.base.dict.table.SysDict;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View(SysDict.class)
public class SysDictView extends BaseEntity {
    /**
     * id
     */
    private Long id;

    /**
     * 字典名称
     */
    private String name;

    /**
     * 字典编码
     */
    private String code;

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
