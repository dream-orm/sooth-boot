package com.moxa.sooth.module.base.dict.controller;


import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.base.dict.model.SysDictItemModel;
import com.moxa.sooth.module.base.dict.service.ISysDictItemService;
import com.moxa.sooth.module.base.dict.view.SysDictItemView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/sys/dictItem")
@Slf4j
public class SysDictItemController extends BaseController<ISysDictItemService, SysDictItemView, SysDictItemModel> {
    public SysDictItemController() {
        super("字典项管理");
    }

    @RequestMapping(value = "{code}", method = RequestMethod.GET)
    public Result<List<SysDictItemView>> getDictItems(@PathVariable("code") String code) {
        List<SysDictItemView> dictItemList = service.getDictItems(code);
        return Result.ok(dictItemList);
    }

}
