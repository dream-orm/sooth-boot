package com.moxa.sooth.depart.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.depart.model.SysDepartModel;
import com.moxa.sooth.depart.service.ISysDepartService;
import com.moxa.sooth.depart.view.SysDepart;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 部门表 前端控制器
 */
@RestController
@RequestMapping("/sys/sysDepart")
@Slf4j
public class SysDepartController extends BaseController<ISysDepartService, SysDepart, SysDepartModel> {


}
