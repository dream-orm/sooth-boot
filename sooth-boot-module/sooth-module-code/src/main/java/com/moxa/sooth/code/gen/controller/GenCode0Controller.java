package com.moxa.sooth.code.gen.controller;

import cn.hutool.core.io.IoUtil;
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
@RequestMapping("/gen/code0")
public class GenCode0Controller {
    @Autowired
    private IGenCodeService generateService;

    @RequestMapping(value = "/generate", method = RequestMethod.POST)
    public void generate(HttpServletResponse response, @RequestBody GenCodeModel genCodeModel) {
        byte[]data = generateService.generate(genCodeModel);
        response.reset();
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
