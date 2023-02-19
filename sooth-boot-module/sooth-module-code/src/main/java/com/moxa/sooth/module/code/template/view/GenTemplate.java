package com.moxa.sooth.module.code.template.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.code.template.table.GenTemplateTable;
import lombok.Data;

@Data
@View(GenTemplateTable.class)
public class GenTemplate extends BaseEntity {
    private Long id;
    private Long groupId;

    private String name;

    private String fileName;

    private String content;
}
