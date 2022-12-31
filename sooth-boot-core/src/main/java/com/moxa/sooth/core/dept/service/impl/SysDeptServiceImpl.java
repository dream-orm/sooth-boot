package com.moxa.sooth.core.dept.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.dept.model.SysDeptModel;
import com.moxa.sooth.core.dept.service.ISysDeptService;
import com.moxa.sooth.core.dept.view.SysDept;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class SysDeptServiceImpl extends ServiceImpl<SysDept, SysDept> implements ISysDeptService {
    @Override
    public List<SysDept> listTree(SysDeptModel deptModel) {
        return templateMapper.selectTree(SysDept.class, deptModel);
    }
}
