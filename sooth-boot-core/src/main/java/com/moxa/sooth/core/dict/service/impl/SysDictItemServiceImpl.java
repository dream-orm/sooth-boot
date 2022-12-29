package com.moxa.sooth.core.dict.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.dict.mapper.SysDictItemMapper;
import com.moxa.sooth.core.dict.service.ISysDictItemService;
import com.moxa.sooth.core.dict.view.SysDictItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SysDictItemServiceImpl extends ServiceImpl<SysDictItem, SysDictItem> implements ISysDictItemService {

    @Autowired
    private SysDictItemMapper dictItemMapper;

    @Override
    public List<SysDictItem> getDictItems(String code) {
        return dictItemMapper.getDictItems(code);
    }
}
