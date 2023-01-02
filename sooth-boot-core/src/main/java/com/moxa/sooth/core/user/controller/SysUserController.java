package com.moxa.sooth.core.user.controller;


import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.base.entity.Result;
import com.moxa.sooth.core.user.model.SysUserModel;
import com.moxa.sooth.core.user.model.SysUserPasswordModel;
import com.moxa.sooth.core.user.service.ISysUserService;
import com.moxa.sooth.core.user.view.SysUser;
import com.moxa.sooth.core.user.view.SysUserEditView;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@Slf4j
@RestController
@RequestMapping("/sys/user")
public class SysUserController extends BaseController<ISysUserService, SysUser, SysUserModel> {

    @RequestMapping(value = "/updatePassword", method = RequestMethod.PUT)
    public Result<?> updatePassword(@RequestBody SysUserPasswordModel userPasswordModel) {
        if (retBool(service.updatePassword(userPasswordModel))) {
            return Result.ok("密码修改成功");
        } else {
            return Result.error("密码修改失败");
        }
    }

    @PostMapping("/saveUser")
    public Result saveUser(@RequestBody SysUserEditView userEditView) {
        if (retBool(service.saveUser(userEditView))) {
            return Result.ok("添加成功");
        } else {
            return Result.ok("添加失败");
        }
    }

    @PostMapping("/editUser")
    public Result editUser(@RequestBody SysUserEditView userEditView) {
        if (retBool(service.editUser(userEditView))) {
            return Result.ok("编辑成功");
        } else {
            return Result.ok("编辑失败");
        }
    }
}
