package com.moxa.sooth.module.base.user.controller;


import com.moxa.sooth.module.base.core.annotation.AutoLog;
import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.base.user.model.BasicInfoModel;
import com.moxa.sooth.module.base.user.model.PasswordModel;
import com.moxa.sooth.module.base.user.model.SysUserModel;
import com.moxa.sooth.module.base.user.service.ISysUserService;
import com.moxa.sooth.module.base.user.view.SysUser;
import com.moxa.sooth.module.base.user.view.SysUserEditView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@Slf4j
@RestController
@RequestMapping("/sys/user")
public class SysUserController extends BaseController<ISysUserService, SysUser, SysUserModel> {
    public SysUserController() {
        super("用户管理");
    }

    @AutoLog("修改密码")
    @RequestMapping(value = "/updatePassword", method = RequestMethod.PUT)
    public Result<?> updatePassword(@RequestBody PasswordModel userPasswordModel) {
        if (retBool(service.updatePassword(userPasswordModel))) {
            return Result.ok(null, "密码修改成功");
        } else {
            return Result.error("密码修改失败");
        }
    }

    @AutoLog("修改基本信息")
    @RequestMapping(value = "/updateBasicInfo", method = RequestMethod.PUT)
    public Result<?> updateBasicInfo(@RequestBody BasicInfoModel basicInfoModel) {
        if (retBool(service.updateBasicInfo(basicInfoModel))) {
            return Result.ok(null, "基本信息修改成功");
        } else {
            return Result.error("基本信息修改失败");
        }
    }

    @AutoLog("新增")
    @PostMapping("/saveUser")
    public Result saveUser(@RequestBody SysUserEditView userEditView) {
        if (retBool(service.saveUser(userEditView))) {
            return Result.ok(null, "添加成功");
        } else {
            return Result.error("添加失败");
        }
    }

    @AutoLog("编辑")
    @PostMapping("/editUser")
    public Result editUser(@RequestBody SysUserEditView userEditView) {
        if (retBool(service.editUser(userEditView))) {
            return Result.ok(null, "编辑成功");
        } else {
            return Result.error("编辑失败");
        }
    }
}
