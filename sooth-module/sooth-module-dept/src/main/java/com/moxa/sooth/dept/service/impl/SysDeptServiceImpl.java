package com.moxa.sooth.dept.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.dept.model.SysDeptModel;
import com.moxa.sooth.dept.view.SysDept;
import com.moxa.sooth.dept.service.ISysDeptService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class SysDeptServiceImpl extends ServiceImpl<SysDept, SysDept> implements ISysDeptService {
    @Override
    public List<SysDept> listTree(SysDeptModel deptModel) {
        return templateMapper.selectTree(SysDept.class,deptModel);
    }
}
