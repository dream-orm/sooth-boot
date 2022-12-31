package com.moxa.sooth.position.controller;


import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.position.model.SysPositionModel;
import com.moxa.sooth.position.service.ISysPositionService;
import com.moxa.sooth.position.view.SysPosition;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 职务表
 */
@Slf4j
@Api(tags = "职务表")
@RestController
@RequestMapping("/sys/position")
public class SysPositionController extends BaseController<ISysPositionService, SysPosition, SysPositionModel> {


}
