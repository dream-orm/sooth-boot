package com.moxa.sooth.core.base.controller;

import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.base.common.aspect.annotation.AutoLog;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

public abstract class BaseController<Service extends IService, EditView, SearchModel> {
    @Autowired
    protected Service service;

    @AutoLog(value = "列表查询")
    @GetMapping("page")
    public Result selectPage(SearchModel searchModel, PageModel pageModel) {
        Page page = service.selectPage(searchModel, pageModel.toPage());
        return Result.ok(page);
    }

    @AutoLog(value = "全量查询")
    @GetMapping("list")
    public Result selectList(SearchModel searchModel) {
        List resultList = service.selectList(searchModel);
        return Result.ok(resultList);
    }

    @AutoLog(value = "添加")
    @PostMapping(value = "/save")
    public Result save(@RequestBody EditView editView) {
        if (retBool(service.insert(editView))) {
            return Result.ok("添加成功");
        } else {
            return Result.error("添加失败");
        }
    }

    @AutoLog(value = "非空编辑")
    @PutMapping(value = "/edit")
    public Result putEdit(@RequestBody EditView editView) {
        if (retBool(service.updateNonById(editView))) {
            return Result.ok("编辑成功");
        } else {
            return Result.error("编辑失败");
        }
    }

    @AutoLog(value = "全量编辑")
    @PostMapping(value = "/edit")
    public Result postEdit(@RequestBody EditView editView) {
        if (retBool(service.updateById(editView))) {
            return Result.ok("编辑成功");
        } else {
            return Result.error("编辑失败");
        }
    }

    @AutoLog(value = "通过id删除")
    @DeleteMapping(value = "/remove")
    public Result remove(@RequestParam(name = "id") String id) {
        if (retBool(service.deleteById(id))) {
            return Result.ok("删除成功");
        } else {
            return Result.error("删除失败");
        }
    }

    @AutoLog(value = "批量删除")
    @DeleteMapping(value = "/removeBatch")
    public Result removeBatch(@RequestParam(name = "ids") String ids) {
        if (retBool(service.deleteByIds(Arrays.asList(ids.split(","))))) {
            return Result.ok("批量删除成功");
        } else {
            return Result.error("批量删除失败");
        }
    }

    @AutoLog(value = "通过id查询")
    @GetMapping(value = "/get")
    public Result get(@RequestParam(name = "id") String id) {
        Object result = service.selectById(id);
        return Result.ok(result);
    }

    protected boolean retBool(int value) {
        return value > 0;
    }
}
