package com.moxa.sooth.code.fieldtype.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.fieldtype.model.FieldTypeModel;
import com.moxa.sooth.code.fieldtype.service.IFieldTypeService;
import com.moxa.sooth.code.fieldtype.view.FieldType;
import com.moxa.sooth.core.base.common.aspect.annotation.AutoLog;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;

@Slf4j
@RestController
@RequestMapping("/generate/fieldType")
public class FieldTypeController extends BaseController<IFieldTypeService,FieldType,FieldTypeModel> {

    @Autowired
    private IFieldTypeService fieldTypeService;


    @GetMapping(value = "/listAttrType")
    public Result<?> listAttrType() {
        return Result.ok(fieldTypeService.listAttrType());
    }

    /**
     * 初始化类型
     *
     * @return
     */
    @AutoLog(value = "字段类型映射-初始化类型")
    @PostMapping(value = "/init")
    public Result<?> initFieldType() {
        fieldTypeService.initFieldType();
        return Result.ok();
    }
}
