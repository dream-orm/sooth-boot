package com.moxa.sooth.core.dataPermission.controller;

import com.moxa.sooth.core.base.controller.BaseController;
import com.moxa.sooth.core.dataPermission.model.SysDataPermissionModel;
import com.moxa.sooth.core.dataPermission.service.ISysDataPermissionService;
import com.moxa.sooth.core.dataPermission.table.SysDataPermission;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sys/dataPermission")
public class SysDataPermissionController extends BaseController<ISysDataPermissionService, SysDataPermission, SysDataPermissionModel> {
    public SysDataPermissionController() {
        super("数据权限");
    }
}
