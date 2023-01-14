package com.moxa.sooth.code.baseclass.controller;

import com.moxa.sooth.code.baseclass.model.BaseClassModel;
import com.moxa.sooth.code.baseclass.service.IBaseClassService;
import com.moxa.sooth.code.baseclass.view.BaseClass;
import com.moxa.sooth.core.base.controller.BaseController;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/generate/baseClass")
public class BaseClassController extends BaseController<IBaseClassService,BaseClass,BaseClassModel> {


}
