package com.moxa.sooth.module.code.fieldtype.controller;


import com.moxa.sooth.module.base.core.annotation.AutoLog;
import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.code.fieldtype.model.FieldTypeModel;
import com.moxa.sooth.module.code.fieldtype.service.IFieldTypeService;
import com.moxa.sooth.module.code.fieldtype.view.FieldType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/generate/fieldType")
public class FieldTypeController extends BaseController<IFieldTypeService, FieldType, FieldTypeModel> {

    @Autowired
    private IFieldTypeService fieldTypeService;

    public FieldTypeController() {
        super("字段映射");
    }


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
