package com.moxa.sooth.core.dept.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.dept.table.SysUserDept;

import java.util.List;

public interface ISysUserDeptService extends IService<SysUserDept, SysUserDept> {

    List<SysUserDept> getDeptByUserId(Long userId);
}
