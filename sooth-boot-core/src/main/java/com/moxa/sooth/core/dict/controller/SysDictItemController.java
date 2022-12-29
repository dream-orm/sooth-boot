package com.moxa.sooth.core.dict.controller;


import com.moxa.sooth.core.base.common.aspect.annotation.Api;
import com.moxa.sooth.core.base.common.system.vo.DictModel;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.dict.model.SysDictItemModel;
import com.moxa.sooth.core.dict.service.ISysDictItemService;
import com.moxa.sooth.core.dict.view.SysDictItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api(tags = "数据字典")
@RestController
@RequestMapping("/sys/dictItem")
@Slf4j
public class SysDictItemController extends BaseController<ISysDictItemService, SysDictItem, SysDictItemModel> {
    @RequestMapping(value = "{code}", method = RequestMethod.GET)
    public Result<List<SysDictItem>> getDictItems(@PathVariable("code") String code) {
        List<SysDictItem>dictItemList=service.getDictItems(code);
        return Result.ok(dictItemList);
    }

}
