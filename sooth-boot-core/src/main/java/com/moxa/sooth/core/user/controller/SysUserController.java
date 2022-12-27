package com.moxa.sooth.core.user.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.user.model.SysUserModel;
import com.moxa.sooth.core.user.service.ISysUserService;
import com.moxa.sooth.core.user.view.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@RestController
@RequestMapping("/sys/user")
public class SysUserController extends BaseController<ISysUserService, SysUser, SysUserModel> {


}
