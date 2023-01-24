package com.moxa.sooth.code.gen.controller;

import cn.hutool.core.io.IoUtil;
import com.moxa.dream.util.exception.DreamRunTimeException;
import com.moxa.sooth.code.gen.model.GenCodeModel;
import com.moxa.sooth.code.gen.service.IGenCodeService;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.exception.SoothBootException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Slf4j
@Controller
@RequestMapping("/gen/code")
public class GenCodeController {
    @Autowired
    private IGenCodeService generateService;

    @ResponseBody
    @RequestMapping(value = "/preview", method = RequestMethod.GET)
    public Result<?> preview(long tableId, long templateId) {
        generateService.preview(tableId);
        return Result.ok();
    }

    @RequestMapping(value = "/generate", method = RequestMethod.GET)
    public void generate(HttpServletResponse response, GenCodeModel genCodeModel) {
        byte[] data = generateService.generate(genCodeModel);
        try {
            response.reset();
            response.setHeader("Content-Disposition", "attachment; filename=\"maku.zip\"");
            response.addHeader("Content-Length", "" + data.length);
            response.setContentType("application/octet-stream; charset=UTF-8");
            IoUtil.write(response.getOutputStream(), false, data);
        } catch (IOException e) {
            throw new SoothBootException(e.getMessage(), e);
        }
    }
}
