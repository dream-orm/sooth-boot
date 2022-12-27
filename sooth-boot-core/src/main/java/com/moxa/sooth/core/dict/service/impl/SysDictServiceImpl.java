package com.moxa.sooth.core.dict.service.impl;

import cn.hutool.core.util.StrUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.dict.mapper.SysDictMapper;
import com.moxa.sooth.core.dict.service.ISysDictService;
import com.moxa.sooth.core.dict.view.SysDict;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Slf4j
public class SysDictServiceImpl extends ServiceImpl<SysDict, SysDict> implements ISysDictService {
    @Autowired
    private SysDictMapper sysDictMapper;
    @Override
    public String translateDict(String code, Object value) {
        return sysDictMapper.translateDict(code,value);

    }
}
