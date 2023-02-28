package com.moxa.sooth.program.controller;

import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.program.model.ProgramMessagesModel;
import com.moxa.sooth.program.service.IProgramMessagesService;
import com.moxa.sooth.program.view.ProgramMessagesEditView;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/program/messages")
public class ProgramMessagesController extends BaseController<IProgramMessagesService, ProgramMessagesEditView, ProgramMessagesModel>{
    public ProgramMessagesController() {
        super("程序消息");
    }
}