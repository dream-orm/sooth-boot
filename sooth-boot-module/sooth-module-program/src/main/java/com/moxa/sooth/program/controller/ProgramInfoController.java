package com.moxa.sooth.program.controller;

import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.program.model.ProgramInfoModel;
import com.moxa.sooth.program.service.IProgramInfoService;
import com.moxa.sooth.program.view.ProgramInfoEditView;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/program/info")
public class ProgramInfoController extends BaseController<IProgramInfoService, ProgramInfoEditView, ProgramInfoModel> {

    public ProgramInfoController() {
        super("程序运维");
    }
    @ResponseBody
    @GetMapping("listMachineName")
    public Result listMachineName() {
        List resultList = service.listMachineName();
        return Result.ok(resultList);
    }
    @ResponseBody
    @GetMapping("listProgramName")
    public Result listProgramName() {
        List resultList = service.listProgramName();
        return Result.ok(resultList);
    }
}