package com.moxa.sooth.module.base.log.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.log.model.SysLogModel;
import com.moxa.sooth.module.base.log.service.ISysLogService;
import com.moxa.sooth.module.base.log.view.SysLog;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sys/log")
@Slf4j
public class SysLogController extends BaseController<ISysLogService, SysLog, SysLogModel> {
    public SysLogController() {
        super("日志管理");
    }
}
