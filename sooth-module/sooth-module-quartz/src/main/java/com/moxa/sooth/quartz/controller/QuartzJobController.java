package com.moxa.sooth.quartz.controller;

import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.common.constant.SymbolConstant;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.quartz.service.IQuartzJobService;
import com.moxa.sooth.quartz.view.QuartzJob;
import lombok.extern.slf4j.Slf4j;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;

/**
 * @Description: 定时任务在线管理
 * @Author: jeecg-boot
 * @Date: 2019-01-02
 * @Version:V1.0
 */
@RestController
@RequestMapping("/sys/quartzJob")
@Slf4j
@Api(tags = "定时任务接口")
public class QuartzJobController {
    @Autowired
    private IQuartzJobService quartzJobService;
    @Autowired
    private Scheduler scheduler;


    /**
     * 添加定时任务
     *
     * @param quartzJob
     * @return
     */
    //@RequiresRoles("admin")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public Result<?> add(@RequestBody QuartzJob quartzJob) {
        quartzJobService.saveAndScheduleJob(quartzJob);
        return Result.ok("创建定时任务成功");
    }

    /**
     * 更新定时任务
     *
     * @param quartzJob
     * @return
     */
    //@RequiresRoles("admin")
    @RequestMapping(value = "/edit", method = {RequestMethod.PUT, RequestMethod.POST})
    public Result<?> edit(@RequestBody QuartzJob quartzJob) {
        try {
            quartzJobService.editAndScheduleJob(quartzJob);
        } catch (SchedulerException e) {
            log.error(e.getMessage(), e);
            return Result.error("更新定时任务失败!");
        }
        return Result.ok("更新定时任务成功!");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    //@RequiresRoles("admin")
    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    public Result<?> delete(@RequestParam(name = "id") String id) {
        QuartzJob quartzJob = quartzJobService.selectById(id);
        if (quartzJob == null) {
            return Result.error("未找到对应实体");
        }
        quartzJobService.deleteAndStopJob(quartzJob);
        return Result.ok("删除成功!");

    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    //@RequiresRoles("admin")
    @RequestMapping(value = "/deleteBatch", method = RequestMethod.DELETE)
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        if (ids == null || "".equals(ids.trim())) {
            return Result.error("参数不识别！");
        }
        for (String id : Arrays.asList(ids.split(SymbolConstant.COMMA))) {
            QuartzJob job = quartzJobService.selectById(id);
            quartzJobService.deleteAndStopJob(job);
        }
        return Result.ok("删除定时任务成功!");
    }

    /**
     * 暂停定时任务
     *
     * @param id
     * @return
     */
    //@RequiresRoles("admin")
    @GetMapping(value = "/pause")

    public Result<Object> pauseJob(@RequestParam(name = "id") String id) {
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
    //@RequiresRoles("admin")
    @GetMapping(value = "/resume")

    public Result<Object> resumeJob(@RequestParam(name = "id") String id) {
        QuartzJob job = quartzJobService.selectById(id);
        if (job == null) {
            return Result.error("定时任务不存在！");
        }
        quartzJobService.resumeJob(job);
//        scheduler.resumeJob(JobKey.jobKey(job.getJobClassName().trim()));
        return Result.ok("启动定时任务成功");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/queryById", method = RequestMethod.GET)
    public Result<?> queryById(@RequestParam(name = "id", required = true) String id) {
        QuartzJob quartzJob = quartzJobService.selectById(id);
        return Result.ok(quartzJob);
    }

    /**
     * 立即执行
     *
     * @param id
     * @return
     */
    //@RequiresRoles("admin")
    @GetMapping("/execute")
    public Result<?> execute(@RequestParam(name = "id", required = true) String id) {
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
