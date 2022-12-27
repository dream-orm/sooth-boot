package com.moxa.sooth.role.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.role.model.SysRoleModel;
import com.moxa.sooth.role.service.ISysRoleService;
import com.moxa.sooth.role.view.SysRole;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 用户表 前端控制器
 */
@Slf4j
@RestController
@RequestMapping("/sys/user")
public class SysRoleController extends BaseController<ISysRoleService, SysRole, SysRoleModel> {


}
