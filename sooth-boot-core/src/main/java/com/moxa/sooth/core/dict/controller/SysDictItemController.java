package com.moxa.sooth.core.dict.controller;


import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.dict.model.SysDictItemModel;
import com.moxa.sooth.core.dict.service.ISysDictItemService;
import com.moxa.sooth.core.dict.view.SysDictItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@Api(tags = "数据字典")
@RestController
@RequestMapping("/sys/dictItem")
@Slf4j
public class SysDictItemController extends BaseController<ISysDictItemService, SysDictItem, SysDictItemModel> {


}
