package com.moxa.sooth.module.base.dataPermission.controller;

import com.moxa.sooth.module.base.core.controller.BaseController;
import com.moxa.sooth.module.base.dataPermission.model.SysDataPermissionModel;
import com.moxa.sooth.module.base.dataPermission.service.ISysDataPermissionService;
import com.moxa.sooth.module.base.dataPermission.table.SysDataPermission;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sys/dataPermission")
public class SysDataPermissionController extends BaseController<ISysDataPermissionService, SysDataPermission, SysDataPermissionModel> {
    public SysDataPermissionController() {
        super("数据权限");
    }
}
