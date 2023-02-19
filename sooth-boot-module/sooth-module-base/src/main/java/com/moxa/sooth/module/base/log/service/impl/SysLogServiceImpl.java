package com.moxa.sooth.module.base.log.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.module.base.log.service.ISysLogService;
import com.moxa.sooth.module.base.log.view.SysLog;
import com.moxa.sooth.module.base.log.view.SysLogListView;
import org.springframework.stereotype.Service;

@Service
public class SysLogServiceImpl extends ServiceImpl<SysLogListView, SysLog> implements ISysLogService {


}
