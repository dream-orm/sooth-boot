package com.moxa.sooth.module.code.baseclass.controller;

import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.code.baseclass.model.BaseClassModel;
import com.moxa.sooth.module.code.baseclass.service.IBaseClassService;
import com.moxa.sooth.module.code.baseclass.view.BaseClass;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/generate/baseClass")
public class BaseClassController extends BaseController<IBaseClassService, BaseClass, BaseClassModel> {
    public BaseClassController() {
        super("基类管理");
    }
}
