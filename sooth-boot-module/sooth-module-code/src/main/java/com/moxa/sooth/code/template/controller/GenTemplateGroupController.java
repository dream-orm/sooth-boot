package com.moxa.sooth.code.template.controller;


import com.moxa.sooth.code.template.model.GenTemplateGroupModel;
import com.moxa.sooth.code.template.service.IGenTemplateGroupService;
import com.moxa.sooth.code.template.view.GenTemplateGroup;
import com.moxa.sooth.core.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/generate/templateGroup")
public class GenTemplateGroupController extends BaseController<IGenTemplateGroupService, GenTemplateGroup, GenTemplateGroupModel> {
    public GenTemplateGroupController() {
        super("模板组");
    }
}
