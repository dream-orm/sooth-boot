package com.moxa.sooth.module.code.template.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.code.template.model.GenTemplateGroupModel;
import com.moxa.sooth.module.code.template.service.IGenTemplateGroupService;
import com.moxa.sooth.module.code.template.view.SysGenGroupLV;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/sys/gen/templateGroup")
public class GenTemplateGroupController extends BaseController<IGenTemplateGroupService, SysGenGroupLV, GenTemplateGroupModel> {
    public GenTemplateGroupController() {
        super("模板组");
    }

    @GetMapping("/groupList")
    public Result groupList() {
        return Result.ok(service.groupList());
    }
}
