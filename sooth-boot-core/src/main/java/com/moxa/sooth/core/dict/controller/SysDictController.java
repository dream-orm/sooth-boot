package com.moxa.sooth.core.dict.controller;


import com.moxa.sooth.common.constant.CacheConstant;
import com.moxa.sooth.core.base.common.system.vo.DictModel;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.dict.model.SysDictModel;
import com.moxa.sooth.core.dict.service.ISysDictService;
import com.moxa.sooth.core.dict.view.SysDict;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Set;


@RestController
@RequestMapping("/sys/dict")
@Slf4j
public class SysDictController extends BaseController<ISysDictService, SysDict, SysDictModel> {
    @RequestMapping(value = "/refreshCache")
    public Result<?> refreshCache() {
        service.refreshCache();
        Result<?> result = new Result<SysDict>();
        return result;
    }
}
