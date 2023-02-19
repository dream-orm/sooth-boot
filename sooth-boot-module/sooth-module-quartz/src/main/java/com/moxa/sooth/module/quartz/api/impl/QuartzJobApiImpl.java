package com.moxa.sooth.module.quartz.api.impl;


import cn.hutool.core.util.ClassUtil;
import com.moxa.sooth.module.quartz.api.IJobApi;
import com.moxa.sooth.module.quartz.util.QuartzConstant;
import com.moxa.sooth.module.quartz.view.SysQuartzEV;
import com.moxa.sooth.module.base.core.config.App;
import org.quartz.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class QuartzJobApiImpl implements IJobApi {
    @Autowired
    private Scheduler scheduler;

    @Override
    public void nowExecute(SysQuartzEV sysQuartzEV) throws Exception {
        Trigger trigger = TriggerBuilder.newTrigger()
                .withIdentity(String.valueOf(sysQuartzEV.getId()))
                .startNow().build();
        String jobName = sysQuartzEV.getName();
        JobDetail jobDetail = JobBuilder.newJob(getType(jobName))
                .usingJobData(QuartzConstant.PARAMETER,sysQuartzEV.getParameter())
                .build();
        scheduler.scheduleJob(jobDetail, trigger);
        scheduler.start();

    }

    @Override
    public void scheduleExecute(SysQuartzEV sysQuartzEV) throws Exception {
        CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(sysQuartzEV.getCron());
        Trigger trigger = TriggerBuilder.newTrigger()
                .withIdentity(String.valueOf(sysQuartzEV.getId()))
                .withSchedule(scheduleBuilder).build();
        String jobName = sysQuartzEV.getName();
        JobDetail jobDetail = JobBuilder.newJob(getType(jobName))
                .usingJobData(QuartzConstant.PARAMETER,sysQuartzEV.getParameter())
                .build();
        scheduler.scheduleJob(jobDetail, trigger);
        scheduler.start();
    }

    @Override
    public void stopExecute(String id) throws Exception {
        scheduler.pauseTrigger(TriggerKey.triggerKey(id));
        scheduler.unscheduleJob(TriggerKey.triggerKey(id));
        scheduler.deleteJob(JobKey.jobKey(id));
    }

    protected Class<? extends org.quartz.Job> getType(String jobName) {
        Class<? extends org.quartz.Job> type;
        if (jobName.indexOf(".") > 0) {
            type = ClassUtil.loadClass(jobName);
        } else {
            type = (Class<? extends org.quartz.Job>) App.getType(jobName);
        }
        return type;
    }
}
