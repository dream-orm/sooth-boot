package com.moxa.sooth.core.dict.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.dict.model.SysDictModel;
import com.moxa.sooth.core.dict.service.ISysDictService;
import com.moxa.sooth.core.dict.view.SysDict;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/sys/dict")
@Slf4j
public class SysDictController extends BaseController<ISysDictService, SysDict, SysDictModel> {


}
