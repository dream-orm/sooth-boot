package com.moxa.sooth.program.controller;

import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.program.model.ProgramMessagesModel;
import com.moxa.sooth.program.service.IProgramMessagesService;
import com.moxa.sooth.program.view.ProgramMessagesEditView;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/program/messages")
public class ProgramMessagesController extends BaseController<IProgramMessagesService, ProgramMessagesEditView, ProgramMessagesModel> {
    public ProgramMessagesController() {
        super("程序消息");
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