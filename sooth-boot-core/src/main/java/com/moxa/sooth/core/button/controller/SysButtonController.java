package com.moxa.sooth.core.button.controller;

import com.moxa.sooth.core.base.annotation.AutoLog;
import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.LoginUser;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.button.model.SysButtonModel;
import com.moxa.sooth.core.button.service.ISysButtonService;
import com.moxa.sooth.core.button.table.SysButton;
import com.moxa.sooth.core.button.view.MenuButton;
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
