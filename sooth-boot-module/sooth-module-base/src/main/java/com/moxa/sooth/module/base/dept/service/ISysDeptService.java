package com.moxa.sooth.module.base.dept.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.dept.model.SysDeptModel;
import com.moxa.sooth.module.base.dept.view.SysDept;

import java.util.List;

public interface ISysDeptService extends IService<SysDept, SysDept> {

    List<SysDept> listTree(SysDeptModel deptModel);

    List<Long> listDeepTree(List<Long> deptList);
}
