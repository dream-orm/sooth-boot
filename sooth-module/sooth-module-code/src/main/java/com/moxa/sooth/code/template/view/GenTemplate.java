package com.moxa.sooth.code.template.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.code.template.table.$GenTemplate;
import com.moxa.sooth.core.base.entity.BaseEntity;
import lombok.Data;

@Data
@View($GenTemplate.class)
public class GenTemplate extends BaseEntity {
    private Long id;
    /**
     * 表ID
     */
    private Long groupId;

    private String name;

    private String content;

    private Boolean validStatus;
}
