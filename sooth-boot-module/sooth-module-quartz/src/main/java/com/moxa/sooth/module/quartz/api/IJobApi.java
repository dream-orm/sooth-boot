package com.moxa.sooth.module.quartz.api;


import com.moxa.sooth.module.quartz.view.SysQuartzEV;
import org.quartz.SchedulerException;

public interface IJobApi {
    /**
     * 立即执行
     *
     * @param sysQuartzEV
     */
    void nowExecute(SysQuartzEV sysQuartzEV) throws Exception;

    /**
     * 定时执行
     *
     * @param sysQuartzEV
     */
    void scheduleExecute(SysQuartzEV sysQuartzEV) throws Exception;

    /**
     * 停止任务
     *
     * @param id
     * @throws Exception
     */
    void stopExecute(String id) throws Exception;

    boolean isRunning(String id) throws SchedulerException;
}
