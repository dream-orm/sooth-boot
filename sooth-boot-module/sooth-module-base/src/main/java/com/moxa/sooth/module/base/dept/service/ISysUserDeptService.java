package com.moxa.sooth.module.base.dept.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.dept.table.SysUserDept;

import java.util.List;

public interface ISysUserDeptService extends IService<SysUserDept, SysUserDept> {

    List<SysUserDept> getDeptByUserId(Long userId);
}
