package com.moxa.sooth.core.dict.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.antlr.invoker.$Invoker;
import com.moxa.sooth.common.constant.CacheConstant;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.dict.mapper.SysDictItemMapper;
import com.moxa.sooth.core.dict.mapper.SysDictMapper;
import com.moxa.sooth.core.dict.model.SysDictCodeExistModel;
import com.moxa.sooth.core.dict.service.ISysDictItemService;
import com.moxa.sooth.core.dict.service.ISysDictService;
import com.moxa.sooth.core.dict.view.SysDict;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;


@Service
@Slf4j
public class SysDictServiceImpl extends ServiceImpl<SysDict, SysDict> implements ISysDictService {
    @Autowired
    private SysDictMapper sysDictMapper;

    @Autowired
    private ISysDictItemService dictItemService;
    @Override
    public String translateDict(String code, Object value) {
        return sysDictMapper.translateDict(code, value);

    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public int deleteById(Object id) {
        dictItemService.deleteByDictId(id);
        return super.deleteById(id);
    }

    private void checkCodeExist(SysDict sysDict){
        SysDictCodeExistModel dictCodeExistModel=new SysDictCodeExistModel();
        dictCodeExistModel.setDictCode(sysDict.getDictCode());
        if(templateMapper.exist(SysDict.class,dictCodeExistModel)){
            throw new SoothBootException("字典编码"+sysDict.getDictCode()+"已经存在");
        }
    }
    @Override
    public int insert(SysDict sysDict) {
        checkCodeExist(sysDict);
        return super.insert(sysDict);
    }}
