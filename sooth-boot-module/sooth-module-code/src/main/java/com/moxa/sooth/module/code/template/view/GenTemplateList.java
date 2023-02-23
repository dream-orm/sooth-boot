package com.moxa.sooth.module.code.template.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.annotation.Dict;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.code.template.table.SysGenTemplate;
import lombok.Data;

@Data
@View(SysGenTemplate.class)
public class GenTemplateList extends BaseDict {
    private Long id;
    @Dict(table = "sys_gen_group", name = "name", code = "id")
    private Long groupId;
    private String name;
    private String fileName;
}
