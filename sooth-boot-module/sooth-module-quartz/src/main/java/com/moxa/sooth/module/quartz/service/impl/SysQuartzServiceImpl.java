package com.moxa.sooth.module.quartz.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.quartz.api.IJobApi;
import com.moxa.sooth.module.quartz.service.ISysQuartzService;
import com.moxa.sooth.module.quartz.view.SysQuartzEV;
import com.moxa.sooth.module.quartz.view.SysQuartzLV;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Slf4j
@Service
public class SysQuartzServiceImpl extends ServiceImpl<SysQuartzLV, SysQuartzEV> implements ISysQuartzService {
    @Autowired
    private IJobApi jobApi;

    @Override
    public void nowExecute(Long id) {
        SysQuartzEV sysQuartzEV = super.selectById(id);
        if (sysQuartzEV == null) {
            throw new SoothException("定时任务未找到");
        }
        try {
            jobApi.nowExecute(sysQuartzEV);
        } catch (Exception e) {
            throw new SoothException(e.getMessage(), e);
        }
    }

    @Override
    public void scheduleExecute(Long id) {
        SysQuartzEV sysQuartzEV = super.selectById(id);
        if (sysQuartzEV == null) {
            throw new SoothException("定时任务未找到");
        }
        try {
            jobApi.scheduleExecute(sysQuartzEV);
        } catch (Exception e) {
            throw new SoothException(e.getMessage(), e);
        }
    }

    @Override
    public void stopExecute(Long id) {
        try {
            jobApi.stopExecute(String.valueOf(id));
        } catch (Exception e) {
            throw new SoothException(e.getMessage(), e);
        }
    }

    @Override
    public Page<SysQuartzLV> selectPage(Object conditionObject, Page page) {
        Page<SysQuartzLV> quartzLVPage = super.selectPage(conditionObject, page);
        Collection<SysQuartzLV> sysQuartzLVS = quartzLVPage.getRows();
        if (CollUtil.isNotEmpty(sysQuartzLVS)) {
            for (SysQuartzLV sysQuartzLV : sysQuartzLVS) {
                try {
                    boolean running = jobApi.isRunning(String.valueOf(sysQuartzLV.getId()));
                    sysQuartzLV.setStatus(running ? 1 : 0);
                } catch (Exception e) {
                    log.error(e.getMessage(), e);
                }
            }
        }
        return quartzLVPage;
    }
}
