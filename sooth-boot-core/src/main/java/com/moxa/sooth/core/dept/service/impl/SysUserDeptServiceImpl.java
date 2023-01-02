package com.moxa.sooth.core.dept.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.dept.model.SysUserDeptUserIdModel;
import com.moxa.sooth.core.dept.service.ISysUserDeptService;
import com.moxa.sooth.core.dept.table.SysUserDept;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class SysUserDeptServiceImpl extends ServiceImpl<SysUserDept, SysUserDept> implements ISysUserDeptService {
    @Override
    public List<SysUserDept> getDeptByUserId(Long userId) {
        SysUserDeptUserIdModel userDeptUserIdModel = new SysUserDeptUserIdModel();
        userDeptUserIdModel.setUserId(userId);
        return templateMapper.selectList(SysUserDept.class, userDeptUserIdModel);
    }
}
