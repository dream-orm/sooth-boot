package com.moxa.sooth.module.base.button.controller;

import com.moxa.sooth.module.base.button.model.SysButtonModel;
import com.moxa.sooth.module.base.button.service.ISysButtonService;
import com.moxa.sooth.module.base.button.table.SysButton;
import com.moxa.sooth.module.base.button.view.MenuButton;
import com.moxa.sooth.module.base.core.annotation.AutoLog;
import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.LoginUser;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.base.core.util.ClientUtil;
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
    public Result saveButton(@PathVariable Long menuId, @RequestBody List<String> buttonTypeList) {
        service.saveButton(menuId, buttonTypeList);
        return Result.ok(null, "保存成功");
    }

    @RequestMapping(value = "/listMenuButtonTree", method = RequestMethod.GET)
    public Result<List<MenuButton>> listMenuButtonTree() {
        LoginUser loginUser = ClientUtil.getLoginUser();
        List<MenuButton> treeList = service.listMenuButtonTree(loginUser.getId());
        return Result.ok(treeList);
    }
}
