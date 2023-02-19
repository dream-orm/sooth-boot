package com.moxa.sooth.module.quartz.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.quartz.view.SysQuartzEV;
import com.moxa.sooth.module.quartz.view.SysQuartzLV;

public interface ISysQuartzService extends IService<SysQuartzLV, SysQuartzEV> {
    void nowExecute(Long id);

    void scheduleExecute(Long id);

    void stopExecute(Long id);

}
