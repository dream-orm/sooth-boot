package com.moxa.sooth.core.role.view;

import com.moxa.sooth.core.base.annotation.Dict;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;

@Data
public class SysUserRoleView extends BaseDict {

    private Long id;

    private String username;

    private String realname;

    @Dict(code = "status")

    private String status;
}
