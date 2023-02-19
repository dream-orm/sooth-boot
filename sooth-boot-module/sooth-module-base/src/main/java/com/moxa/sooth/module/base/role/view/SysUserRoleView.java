package com.moxa.sooth.module.base.role.view;

import com.moxa.sooth.module.base.core.entity.BaseDict;
import lombok.Data;

@Data
public class SysUserRoleView extends BaseDict {

    private Long id;

    private String username;

    private String realname;
}
