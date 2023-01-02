package com.moxa.sooth.core.role.view;

import com.moxa.dream.system.annotation.Extract;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;

@Data
public class SysUserRoleView extends BaseDict {

    private Long id;

    private String username;

    private String realname;

    @Dict(dicCode = "status")
    @Extract(DictExtractor.class)
    private String status;
}
