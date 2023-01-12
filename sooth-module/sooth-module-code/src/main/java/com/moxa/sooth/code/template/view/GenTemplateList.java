package com.moxa.sooth.code.template.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.template.table.$GenTemplate;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;

@Data
@View($GenTemplate.class)
public class GenTemplateList extends BaseDict {
    private Long id;
//    @Dict(dictTable = "gen_template_group", dicText = "name", dicCode = "id")
//    @Extract(DictExtractor.class)
    private Long groupId;
    private String name;
    //    @Dict(dicCode = "valid_status")
//    @Extract(DictExtractor.class)
    private Boolean validStatus;
}
