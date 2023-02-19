package com.moxa.sooth.module.quartz.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.quartz.api.IJobApi;
import com.moxa.sooth.module.quartz.service.ISysQuartzService;
import com.moxa.sooth.module.quartz.view.SysQuartzEV;
import com.moxa.sooth.module.quartz.view.SysQuartzLV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
