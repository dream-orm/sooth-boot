package com.moxa.sooth.quartz.controller;

import com.moxa.sooth.core.base.common.constant.SymbolConstant;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.quartz.service.IQuartzJobService;
import com.moxa.sooth.quartz.view.QuartzJob;
import lombok.extern.slf4j.Slf4j;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;

@RestController
@RequestMapping("/sys/quartzJob")
@Slf4j
public class QuartzJobController extends BaseController<IQuartzJobService, QuartzJob, QuartzJob> {
    @Autowired
    private IQuartzJobService quartzJobService;
    /**
     * 暂停定时任务
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/pause")
    public Result<Object> pauseJob(@RequestParam(name = "id") Long id) {
        QuartzJob job = quartzJobService.selectById(id);
        if (job == null) {
            return Result.error("定时任务不存在！");
        }
        quartzJobService.pause(job);
        return Result.ok("停止定时任务成功");
    }

    /**
     * 启动定时任务
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/resume")
    public Result<Object> resumeJob(@RequestParam(name = "id") Long id) {
        QuartzJob job = quartzJobService.selectById(id);
        if (job == null) {
            return Result.error("定时任务不存在！");
        }
        quartzJobService.resumeJob(job);
//        scheduler.resumeJob(JobKey.jobKey(job.getJobClassName().trim()));
        return Result.ok("启动定时任务成功");
    }
    /**
     * 立即执行
     *
     * @param id
     * @return
     */
    //@RequiresRoles("admin")
    @GetMapping("/execute")
    public Result<?> execute(@RequestParam(name = "id") Long id) {
        QuartzJob quartzJob = quartzJobService.selectById(id);
        if (quartzJob == null) {
            return Result.error("未找到对应实体");
        }
        try {
            quartzJobService.execute(quartzJob);
        } catch (Exception e) {
            //e.printStackTrace();
            log.info("定时任务 立即执行失败>>" + e.getMessage());
            return Result.error("执行失败!");
        }
        return Result.ok("执行成功!");
    }
}
