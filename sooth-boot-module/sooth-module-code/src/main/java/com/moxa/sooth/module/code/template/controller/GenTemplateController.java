package com.moxa.sooth.module.code.template.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.code.template.model.GenTemplateModel;
import com.moxa.sooth.module.code.template.service.IGenTemplateService;
import com.moxa.sooth.module.code.template.view.GenTemplate;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/sys/gen/template")
public class GenTemplateController extends BaseController<IGenTemplateService, GenTemplate, GenTemplateModel> {
    public GenTemplateController() {
        super("模板配置");
    }

    @GetMapping("/help")
    public Result help() {
        return Result.ok(service.help());
    }
}
