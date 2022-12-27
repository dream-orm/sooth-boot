package com.moxa.sooth.user.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.user.model.SysUserModel;
import com.moxa.sooth.user.service.ISysTenantService;
import com.moxa.sooth.user.view.SysTenant;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 用户表 前端控制器
 */
@Slf4j
@RestController
@RequestMapping("/sys/tenant")
public class SysTenantController extends BaseController<ISysTenantService, SysTenant, SysUserModel> {


}
