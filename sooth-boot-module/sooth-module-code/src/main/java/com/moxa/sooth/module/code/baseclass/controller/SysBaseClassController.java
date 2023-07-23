package com.moxa.sooth.module.code.baseclass.controller;

import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.code.baseclass.model.BaseClassModel;
import com.moxa.sooth.module.code.baseclass.service.ISysBaseClassService;
import com.moxa.sooth.module.code.baseclass.view.SysBaseClassEV;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/sys/gen/baseClass")
public class SysBaseClassController extends BaseController<ISysBaseClassService, SysBaseClassEV, BaseClassModel> {
    public SysBaseClassController() {
        super("基类管理");
    }
}
