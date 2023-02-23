package com.moxa.sooth.module.code.gen.controller;


import cn.hutool.core.io.IoUtil;
import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.code.gen.model.GenCodeModel;
import com.moxa.sooth.module.code.gen.model.GenTableModel;
import com.moxa.sooth.module.code.gen.service.IGenCodeService;
import com.moxa.sooth.module.code.gen.view.SysGenTableEV;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/sys/gen/code")
public class GenCodeController extends BaseController<IGenCodeService, SysGenTableEV, GenTableModel> {
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
        List<SysGenTableEV> tableList = genTableService.getTableList(id);
        return Result.ok(tableList);
    }

    @RequestMapping(value = "/preview", method = RequestMethod.GET)
    public Result<?> preview(GenCodeModel genCodeModel) {
        List<Map<String, String>> resultList = genTableService.preview(genCodeModel);
        return Result.ok(resultList);
    }

    @RequestMapping(value = "/generate", method = RequestMethod.POST)
    public void generate(HttpServletResponse response, @RequestBody GenCodeModel genCodeModel) {
        response.reset();
        try {
            byte[] data = genTableService.generate(genCodeModel);
            response.setContentType("application/octet-stream; charset=UTF-8");
            IoUtil.write(response.getOutputStream(), true, data);
        } catch (Exception e) {
            response.setContentType("application/text; charset=UTF-8");
            try {
                IoUtil.write(response.getOutputStream(), true, e.getMessage().getBytes(StandardCharsets.UTF_8));
            } catch (Exception e1) {
            }
        }
    }
}
