package com.moxa.sooth.log.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.log.model.SysLogModel;
import com.moxa.sooth.log.service.ISysLogService;
import com.moxa.sooth.log.view.SysLog;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 系统日志表 前端控制器
 * </p>
 *
 * @Author zhangweijian
 * @since 2018-12-26
 */
@RestController
@RequestMapping("/sys/log")
@Slf4j
public class SysLogController extends BaseController<ISysLogService, SysLog, SysLogModel> {


}
