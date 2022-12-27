package com.moxa.sooth.code.baseclass.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.baseclass.model.BaseClassModel;
import com.moxa.sooth.code.baseclass.service.IBaseClassService;
import com.moxa.sooth.code.baseclass.view.BaseClass;
import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.common.aspect.annotation.AutoLog;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Slf4j
@Api(tags = "基类管理")
@RestController
@RequestMapping("/generate/baseClass")
public class BaseClassController {

    @Autowired
    private IBaseClassService fieldTypeService;


    /**
     * 分页列表查询
     *
     * @param baseClassModel
     * @param pageModel
     * @return
     */
    @AutoLog(value = "基类管理-分页列表查询")

    @GetMapping(value = "/list")
    public Result<?> queryPageList(BaseClassModel baseClassModel, PageModel pageModel) {
        Page<BaseClass> page = fieldTypeService.selectPage(baseClassModel, pageModel.toPage());
        return Result.ok(page);
    }

    @GetMapping(value = "/listAll")
    public Result<?> listAll() {
        List<BaseClass> baseClassList = fieldTypeService.selectAll();
        return Result.ok(baseClassList);
    }

    /**
     * 添加
     *
     * @param baseClass
     * @return
     */
    @AutoLog(value = "基类管理-添加")

    @PostMapping(value = "/add")
    public Result<?> save(@RequestBody BaseClass baseClass) {
        return fieldTypeService.save(baseClass);
    }

    /**
     * 编辑
     *
     * @param baseClass
     * @return
     */
    @AutoLog(value = "基类管理-编辑")

    @RequestMapping(value = "/edit", method = {RequestMethod.PUT, RequestMethod.POST})
    public Result<?> edit(@RequestBody BaseClass baseClass) {
        return fieldTypeService.edit(baseClass);
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @AutoLog(value = "基类管理-通过id删除")

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
    @AutoLog(value = "基类管理-批量删除")

    @DeleteMapping(value = "/deleteBatch")
    public Result<?> deleteBatch(@RequestParam(name = "ids") String ids) {
        fieldTypeService.removeByIds(Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

}
