package com.moxa.sooth.module.base.dept.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.module.base.dept.mapper.SysUserDeptMapper;
import com.moxa.sooth.module.base.dept.service.ISysUserDeptService;
import com.moxa.sooth.module.base.dept.table.SysUserDept;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class SysUserDeptServiceImpl extends ServiceImpl<SysUserDept, SysUserDept> implements ISysUserDeptService {
    @Autowired
    private SysUserDeptMapper userDeptMapper;

    @Override
    public List<SysUserDept> getDeptByUserId(Long userId) {
        return userDeptMapper.getDeptByUserId(userId);
    }
}
