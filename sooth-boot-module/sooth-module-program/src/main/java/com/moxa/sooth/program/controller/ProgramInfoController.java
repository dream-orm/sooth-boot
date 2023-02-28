package com.moxa.sooth.program.controller;

import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.program.model.ProgramInfoModel;
import com.moxa.sooth.program.service.IProgramInfoService;
import com.moxa.sooth.program.view.ProgramInfoEditView;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/program/info")
public class ProgramInfoController extends BaseController<IProgramInfoService, ProgramInfoEditView, ProgramInfoModel> {

    public ProgramInfoController() {
        super("程序运维");
    }
}