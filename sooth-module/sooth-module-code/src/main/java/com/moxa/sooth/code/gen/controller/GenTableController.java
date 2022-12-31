package com.moxa.sooth.code.gen.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.gen.model.GenTableModel;
import com.moxa.sooth.code.gen.service.IGenTableService;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.common.aspect.annotation.AutoLog;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Api(tags = "代码生成")
@RestController
@RequestMapping("/gen/table")
public class GenTableController {
    @Autowired
    private IGenTableService genTableService;

    /**
     * 分页列表查询
     *
     * @param genTableModel
     * @param pageModel
     * @return
     */
    @AutoLog(value = "代码生成-分页列表查询")

    @GetMapping(value = "/list")
    public Result<?> queryPageList(GenTableModel genTableModel, PageModel pageModel) {
        Page<GenTable> page = genTableService.selectPage(genTableModel, pageModel.toPage());
        return Result.ok(page);
    }

    /**
     * 添加
     *
     * @param genTable
     * @return
     */
    @AutoLog(value = "代码生成-添加")

    @PostMapping(value = "/add")
    public Result<?> save(@RequestBody GenTable genTable) {
        return genTableService.save(genTable);
    }

    /**
     * 编辑
     *
     * @param genTable
     * @return
     */
    @AutoLog(value = "代码生成-编辑")

    @RequestMapping(value = "/edit", method = {RequestMethod.PUT, RequestMethod.POST})
    public Result<?> edit(@RequestBody GenTable genTable) {
        return genTableService.edit(genTable);
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @AutoLog(value = "代码生成-通过id删除")

    @DeleteMapping(value = "/delete")
    public Result<?> delete(@RequestParam(name = "id") String id) {
        return genTableService.delete(id);
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @AutoLog(value = "代码生成-批量删除")

    @DeleteMapping(value = "/deleteBatch")
    public Result<?> deleteBatch(@RequestParam(name = "ids") String ids) {
        List<Long> longList = Arrays.asList(ids.split(",")).stream().map(id -> Long.valueOf(id)).collect(Collectors.toList());
        genTableService.removeByIds(longList);
        return Result.ok("批量删除成功！");
    }

    @RequestMapping(value = "/getTableList", method = RequestMethod.GET)
    public Result<?> getTableList(long id) {
        List<GenTable> tableList = genTableService.getTableList(id);
        return Result.ok(tableList);
    }

    @RequestMapping(value = "/getTableFieldList", method = RequestMethod.GET)
    public Result<?> getTableFieldList(long tableId) {
        List<GenTableField> tableFieldList = genTableService.getTableFieldList(tableId);
        return Result.ok(tableFieldList);
    }
}
