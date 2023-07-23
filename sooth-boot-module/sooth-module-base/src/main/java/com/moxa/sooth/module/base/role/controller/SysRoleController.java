package com.moxa.sooth.module.base.role.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.role.model.SysRoleModel;
import com.moxa.sooth.module.base.role.service.ISysRoleService;
import com.moxa.sooth.module.base.role.view.SysRole;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/sys/role")
public class SysRoleController extends BaseController<ISysRoleService, SysRole, SysRoleModel> {
    public SysRoleController() {
        super("角色管理");
    }
}
