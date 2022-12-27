package com.moxa.sooth.core.base.redis.listener;


import com.moxa.sooth.common.base.BaseMap;


public interface JeecgRedisListener {
    /**
     * 接受消息
     *
     * @param message
     */
    void onMessage(BaseMap message);

}
