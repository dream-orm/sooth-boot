package com.moxa.sooth.code.gen.controller;

import com.moxa.sooth.code.gen.model.GenCodeModel;
import com.moxa.sooth.code.gen.service.IGenCodeService;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@Api(tags = "代码生成")
@RestController
@RequestMapping("/gen/code")
public class GenCodeController {
    @Autowired
    private IGenCodeService generateService;

    @RequestMapping(value = "/preview", method = RequestMethod.GET)
    public Result<?> preview(long tableId, long templateId) {
        generateService.preview(tableId);
        return Result.ok();
    }

    @RequestMapping(value = "/generate", method = RequestMethod.POST)
    public Result<?> generate(@RequestBody GenCodeModel genCodeModel) {
        generateService.generate(genCodeModel);
        return Result.ok();
    }
}
