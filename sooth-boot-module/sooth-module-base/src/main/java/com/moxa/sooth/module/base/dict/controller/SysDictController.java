package com.moxa.sooth.module.base.dict.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.dict.model.SysDictModel;
import com.moxa.sooth.module.base.dict.service.ISysDictService;
import com.moxa.sooth.module.base.dict.view.SysDictView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/sys/dict")
@Slf4j
public class SysDictController extends BaseController<ISysDictService, SysDictView, SysDictModel> {
    public SysDictController() {
        super("字典管理");
    }
}
