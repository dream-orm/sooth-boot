package com.moxa.sooth.dept.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.dept.model.SysDeptModel;
import com.moxa.sooth.dept.view.SysDept;

import java.util.List;
public interface ISysDeptService extends IService<SysDept, SysDept> {

    List<SysDept> listTree(SysDeptModel deptModel);
}
