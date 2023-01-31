package com.moxa.sooth.code.template.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.template.table.GenTemplateTable;
import com.moxa.sooth.core.base.annotation.Dict;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;

@Data
@View(GenTemplateTable.class)
public class GenTemplateList extends BaseDict {
    private Long id;
    @Dict(table = "gen_template_group", name = "name", code = "id")
    private Long groupId;
    private String name;
    private String fileName;
}
