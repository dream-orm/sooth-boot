package com.moxa.sooth.code.gen.controller;


import cn.hutool.core.io.IoUtil;
import com.moxa.sooth.code.gen.model.GenCodeModel;
import com.moxa.sooth.code.gen.model.GenTableModel;
import com.moxa.sooth.code.gen.service.IGenCodeService;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.exception.SoothBootException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/gen/code")
public class GenCodeController extends BaseController<IGenCodeService, GenTable, GenTableModel> {
    @Autowired
    private IGenCodeService genTableService;

    public GenCodeController() {
        super("代码生成");
    }

    @RequestMapping(value = "/{datasourceId}/tableImport", method = RequestMethod.POST)
    public Result<?> tableImport(@PathVariable Long datasourceId, @RequestBody List<String> tableNameList) {
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

    @RequestMapping(value = "/preview", method = RequestMethod.GET)
    public Result<?> preview(GenCodeModel genCodeModel) {
        List<Map<String, String>> resultList = genTableService.preview(genCodeModel);
        return Result.ok(resultList);
    }

    @RequestMapping(value = "/generate", method = RequestMethod.POST)
    public void generate(HttpServletResponse response, @RequestBody GenCodeModel genCodeModel) {
        byte[]data = genTableService.generate(genCodeModel);
        response.reset();
        try {
            response.reset();
            response.setHeader("Content-Disposition", "attachment; filename=\"code.zip\"");
            response.addHeader("Content-Length", "" + data.length);
            response.setContentType("application/octet-stream; charset=UTF-8");
            IoUtil.write(response.getOutputStream(),true, data);
        } catch (IOException e) {
            throw new SoothBootException(e.getMessage(), e);
        }
    }
}
