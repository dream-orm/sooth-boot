package com.moxa.sooth.module.base.dept.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.module.base.core.annotation.DataPermission;
import com.moxa.sooth.module.base.dept.mapper.SysDeptMapper;
import com.moxa.sooth.module.base.dept.model.SysDeptModel;
import com.moxa.sooth.module.base.dept.service.ISysDeptService;
import com.moxa.sooth.module.base.dept.view.SysDept;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.annotation.Annotation;
import java.util.List;

@Service
@Slf4j
public class SysDeptServiceImpl extends ServiceImpl<SysDept, SysDept> implements ISysDeptService {

    @Autowired
    private SysDeptMapper sysDeptMapper;

    @Override
    public List<SysDept> listTree(SysDeptModel deptModel) {
        return templateMapper.methodInfo(methodInfo -> methodInfo.set(DataPermission.class, new DataPermission() {
            @Override
            public Class<? extends Annotation> annotationType() {
                return DataPermission.class;
            }
        })).selectTree(SysDept.class, deptModel);
    }

    @Override
    public List<Long> listDeepTree(List<Long> deptList) {
        return sysDeptMapper.selectDeepTree(deptList);
    }

    @Override
    public int deleteById(Object id) {
        return super.deleteById(id);
    }
}
