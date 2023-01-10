package com.moxa.sooth.core.dept.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.dept.model.SysDeptModel;
import com.moxa.sooth.core.dept.view.SysDept;

import java.util.List;

public interface ISysDeptService extends IService<SysDept, SysDept> {

    List<SysDept> listTree(SysDeptModel deptModel);

    List<Long> listDeepTree(List<Long> deptList);
}
