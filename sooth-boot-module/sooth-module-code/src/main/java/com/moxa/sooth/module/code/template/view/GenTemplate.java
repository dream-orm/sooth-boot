package com.moxa.sooth.module.code.template.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.code.template.table.SysGenTemplate;
import lombok.Data;

@Data
@View(SysGenTemplate.class)
public class GenTemplate extends BaseEntity {
    private Long id;
    private Long groupId;

    private String name;

    private String fileName;

    private String content;
}
