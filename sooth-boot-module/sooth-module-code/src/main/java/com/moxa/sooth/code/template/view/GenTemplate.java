package com.moxa.sooth.code.template.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.template.table.GenTemplateTable;
import com.moxa.sooth.core.base.entity.BaseEntity;
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
