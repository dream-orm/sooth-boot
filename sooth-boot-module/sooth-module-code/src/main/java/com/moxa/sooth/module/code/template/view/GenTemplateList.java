package com.moxa.sooth.module.code.template.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.module.base.core.dream.extract.DictExtractor;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.code.template.table.SysGenTemplate;
import lombok.Data;

@Data
@View(SysGenTemplate.class)
public class GenTemplateList extends BaseDict {
    private Long id;
    @Extract(value = DictExtractor.class,args = {"id","sys_gen_group","name"})
    private Long groupId;
    private String name;
    private String fileName;
}
