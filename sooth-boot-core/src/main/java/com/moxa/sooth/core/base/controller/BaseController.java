package com.moxa.sooth.core.base.controller;

import cn.hutool.core.util.StrUtil;
import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.log.annotation.AutoLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

public abstract class BaseController<Service extends IService, EditView, SearchModel> implements ModuleController {
    @Autowired
    protected Service service;
    private String bizModule;

    public BaseController(String bizModule) {
        if(StrUtil.isBlank(bizModule)){
            throw new SoothBootException("业务模块名不能为空");
        }
        this.bizModule = bizModule;
    }

    @GetMapping("page")
    public Result selectPage(SearchModel searchModel, PageModel pageModel) {
        Page page = service.selectPage(searchModel, pageModel.toPage());
        return Result.ok(page);
    }

    @GetMapping("list")
    public Result selectList(SearchModel searchModel) {
        List resultList = service.selectList(searchModel);
        return Result.ok(resultList);
    }

    @AutoLog(value = "新增")
    @PostMapping(value = "/save")
    public Result save(@RequestBody EditView editView) {
        if (retBool(service.insert(editView))) {
            return Result.ok(null, "添加成功");
        } else {
            return Result.error("添加失败");
        }
    }

    @AutoLog(value = "非空编辑")
    @PutMapping(value = "/edit")
    public Result putEdit(@RequestBody EditView editView) {
        if (retBool(service.updateNonById(editView))) {
            return Result.ok(null, "编辑成功");
        } else {
            return Result.error("编辑失败");
        }
    }

    @AutoLog(value = "全量编辑")
    @PostMapping(value = "/edit")
    public Result postEdit(@RequestBody EditView editView) {
        if (retBool(service.updateById(editView))) {
            return Result.ok(null, "编辑成功");
        } else {
            return Result.error("编辑失败");
        }
    }

    @AutoLog(value = "通过id删除")
    @DeleteMapping(value = "/remove")
    public Result remove(@RequestParam(name = "id") Long id) {
        if (retBool(service.deleteById(id))) {
            return Result.ok(null, "删除成功");
        } else {
            return Result.error("删除失败");
        }
    }

    @AutoLog(value = "批量删除")
    @DeleteMapping(value = "/removeBatch")
    public Result removeBatch(@RequestParam(name = "ids") List<Long> ids) {
        if (retBool(service.deleteByIds(ids))) {
            return Result.ok(null, "批量删除成功");
        } else {
            return Result.error("批量删除失败");
        }
    }

    @GetMapping(value = "/get")
    public Result get(@RequestParam(name = "id") Long id) {
        Object result = service.selectById(id);
        return Result.ok(result);
    }

    protected boolean retBool(int value) {
        return value > 0;
    }

    @Override
    public String getBizModule() {
        return bizModule;
    }
}
