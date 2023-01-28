package com.moxa.sooth.core.button.controller;

import com.moxa.sooth.core.base.annotation.AutoLog;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.button.model.SysButtonModel;
import com.moxa.sooth.core.button.service.ISysButtonService;
import com.moxa.sooth.core.button.table.SysButton;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/sys/button")
public class SysButtonController extends BaseController<ISysButtonService, SysButton, SysButtonModel> {
    public SysButtonController() {
        super("菜单按钮");
    }


    @AutoLog("保存")
    @PostMapping(value = "saveButton/{menuId}")
    public Result saveButton(@PathVariable Long menuId,@RequestBody List<String> buttonTypeList) {
        service.saveButton(menuId,buttonTypeList);
        return Result.ok(null,"保存成功");
    }
}
