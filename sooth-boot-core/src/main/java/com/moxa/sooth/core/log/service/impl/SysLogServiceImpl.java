package com.moxa.sooth.core.log.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.log.service.ISysLogService;
import com.moxa.sooth.core.log.view.SysLog;
import com.moxa.sooth.core.log.view.SysLogListView;
import org.springframework.stereotype.Service;

@Service
public class SysLogServiceImpl extends ServiceImpl<SysLogListView, SysLog> implements ISysLogService {


}
