package com.moxa.sooth.module.code.gen.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.code.gen.model.SysGenFieldModel;
import com.moxa.sooth.module.code.gen.service.ISysGenFieldService;
import com.moxa.sooth.module.code.gen.view.SysGenFieldLV;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/sys/gen/field")
public class SysGenFieldController extends BaseController<ISysGenFieldService, SysGenFieldLV, SysGenFieldModel> {
    public SysGenFieldController() {
        super("字段配置");
    }
}
