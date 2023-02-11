package com.moxa.sooth.core.dict.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.core.dict.mapper.SysDictItemMapper;
import com.moxa.sooth.core.dict.service.ISysDictItemService;
import com.moxa.sooth.core.dict.view.SysDictItemView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SysDictItemServiceImpl extends ServiceImpl<SysDictItemView, SysDictItemView> implements ISysDictItemService {

    @Autowired
    private SysDictItemMapper dictItemMapper;

    @Override
    public List<SysDictItemView> getDictItems(String code) {
        return dictItemMapper.getDictItems(code);
    }

    @Override
    public int deleteByDictId(Object dictId) {
        return dictItemMapper.deleteByDictId(dictId);
    }
}
