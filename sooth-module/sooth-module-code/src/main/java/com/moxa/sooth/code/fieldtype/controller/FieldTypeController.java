package com.moxa.sooth.code.fieldtype.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.fieldtype.model.FieldTypeModel;
import com.moxa.sooth.code.fieldtype.service.IFieldTypeService;
import com.moxa.sooth.code.fieldtype.view.FieldType;
import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.common.aspect.annotation.AutoLog;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;

@Slf4j
@Api(tags = "字段类型映射")
@RestController
@RequestMapping("/generate/fieldType")
public class FieldTypeController {

    @Autowired
    private IFieldTypeService fieldTypeService;


    /**
     * 分页列表查询
     *
     * @param fieldTypeModel
     * @param pageModel
     * @return
     */
    @AutoLog(value = "字段类型映射-分页列表查询")

    @GetMapping(value = "/list")
    public Result<?> queryPageList(FieldTypeModel fieldTypeModel, PageModel pageModel) {
        Page<FieldType> page = fieldTypeService.selectPage(fieldTypeModel, pageModel.toPage());
        return Result.ok(page);
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

    /**
     * 编辑
     *
     * @param fieldType
     * @return
     */
    @AutoLog(value = "字段类型映射-编辑")

    @RequestMapping(value = "/edit", method = {RequestMethod.PUT, RequestMethod.POST})
    public Result<?> edit(@RequestBody FieldType fieldType) {
        return fieldTypeService.edit(fieldType);
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @AutoLog(value = "字段类型映射-通过id删除")

    @DeleteMapping(value = "/delete")
    public Result<?> delete(@RequestParam(name = "id") String id) {
        return fieldTypeService.delete(id);
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @AutoLog(value = "字段类型映射-批量删除")

    @DeleteMapping(value = "/deleteBatch")
    public Result<?> deleteBatch(@RequestParam(name = "ids") String ids) {
        fieldTypeService.removeByIds(Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

}
