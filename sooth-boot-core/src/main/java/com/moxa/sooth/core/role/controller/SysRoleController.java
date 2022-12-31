package com.moxa.sooth.core.role.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.role.model.SysRoleModel;
import com.moxa.sooth.core.role.service.ISysRoleService;
import com.moxa.sooth.core.role.view.SysRole;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/sys/role")
public class SysRoleController extends BaseController<ISysRoleService, SysRole, SysRoleModel> {


}
