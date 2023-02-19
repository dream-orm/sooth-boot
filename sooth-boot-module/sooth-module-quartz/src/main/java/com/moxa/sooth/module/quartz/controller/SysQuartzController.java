package com.moxa.sooth.module.quartz.controller;

import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.quartz.model.SysQuartzModel;
import com.moxa.sooth.module.quartz.service.ISysQuartzService;
import com.moxa.sooth.module.quartz.view.SysQuartzEV;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sys/quartz")
public class SysQuartzController extends BaseController<ISysQuartzService, SysQuartzEV, SysQuartzModel> {
    public SysQuartzController() {
        super("定时任务");
    }

    /**
     * 立即执行
     */
    @RequestMapping("nowExecute")
    public Result nowExecute(@RequestParam Long id) {
        service.nowExecute(id);
        return Result.ok(null,"执行成功");
    }

    /**
     * 定时执行
     */
    @RequestMapping("scheduleExecute")
    public Result scheduleExecute(@RequestParam Long id) {
        service.scheduleExecute(id);
        return Result.ok(null,"调度成功");
    }

    /**
     * 停止任务
     *
     * @param id
     * @throws Exception
     */
    @RequestMapping("stopExecute")
    public Result stopExecute(@RequestParam Long id) {
        service.stopExecute(id);
        return Result.ok(null,"停止成功");
    }
}
