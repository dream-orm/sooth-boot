package com.moxa.sooth.core.dict.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.antlr.invoker.$Invoker;
import com.moxa.sooth.common.constant.CacheConstant;
import com.moxa.sooth.core.dict.mapper.SysDictMapper;
import com.moxa.sooth.core.dict.service.ISysDictService;
import com.moxa.sooth.core.dict.view.SysDict;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Set;


@Service
@Slf4j
public class SysDictServiceImpl extends ServiceImpl<SysDict, SysDict> implements ISysDictService {
    @Autowired
    public RedisTemplate<String, Object> redisTemplate;
    @Autowired
    private SysDictMapper sysDictMapper;

    @Override
    public String translateDict(String code, Object value) {
        return sysDictMapper.translateDict(code, value);

    }

    @Override
    public void refreshCache() {
        $Invoker i;
        //清空字典缓存
        Set keys = redisTemplate.keys(CacheConstant.SYS_DICT_CACHE + "*");
        Set keys7 = redisTemplate.keys(CacheConstant.SYS_ENABLE_DICT_CACHE + "*");
        Set keys2 = redisTemplate.keys(CacheConstant.SYS_DICT_TABLE_CACHE + "*");
        Set keys21 = redisTemplate.keys(CacheConstant.SYS_DICT_TABLE_BY_KEYS_CACHE + "*");
        Set keys3 = redisTemplate.keys(CacheConstant.SYS_DEPARTS_CACHE + "*");
        Set keys4 = redisTemplate.keys(CacheConstant.SYS_DEPART_IDS_CACHE + "*");
        redisTemplate.delete(keys);
        redisTemplate.delete(keys2);
        redisTemplate.delete(keys21);
        redisTemplate.delete(keys3);
        redisTemplate.delete(keys4);
        redisTemplate.delete(keys7);
    }
}
