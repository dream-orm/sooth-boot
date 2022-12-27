package com.moxa.sooth.modules.monitor.service;

import com.alibaba.fastjson.JSONArray;
import com.moxa.sooth.modules.monitor.domain.RedisInfo;
import com.moxa.sooth.modules.monitor.exception.RedisConnectException;

import java.util.List;
import java.util.Map;

/**
 * @Description: redis信息service接口
 * @author: jeecg-boot
 */
public interface RedisService {

    /**
     * 获取 redis 的详细信息
     *
     * @return List
     * @throws RedisConnectException
     */
    List<RedisInfo> getRedisInfo() throws RedisConnectException;

    /**
     * 获取 redis key 数量
     *
     * @return Map
     * @throws RedisConnectException
     */
    Map<String, Object> getKeysSize() throws RedisConnectException;

    /**
     * 获取 redis 内存信息
     *
     * @return Map
     * @throws RedisConnectException
     */
    Map<String, Object> getMemoryInfo() throws RedisConnectException;

    /**
     * 获取 报表需要个redis信息
     *
     * @param type
     * @return Map
     * @throws RedisConnectException
     */
    Map<String, JSONArray> getMapForReport(String type) throws RedisConnectException;
}
