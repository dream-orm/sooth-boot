package com.moxa.sooth.code.gen.controller;


import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.gen.model.GenTableModel;
import com.moxa.sooth.code.gen.service.IGenTableService;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.core.base.annotation.AutoLog;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.PageModel;
import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RestController
@RequestMapping("/gen/table")
public class GenTableController extends BaseController<IGenTableService,GenTable,GenTableModel> {
    @Autowired
    private IGenTableService genTableService;

    public GenTableController() {
        super("代码生成");
    }

    @RequestMapping(value = "/{datasourceId}/tableImport", method = RequestMethod.POST)
    public Result<?> tableImport(@PathVariable Long datasourceId,@RequestBody List<String>tableNameList) {
        genTableService.tableImport(datasourceId, tableNameList);
        return Result.ok();
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
