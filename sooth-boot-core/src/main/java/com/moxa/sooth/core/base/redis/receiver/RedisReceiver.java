package com.moxa.sooth.core.base.redis.receiver;


import cn.hutool.core.util.ObjectUtil;
import com.moxa.sooth.core.base.redis.listener.JeecgRedisListener;
import com.moxa.sooth.common.base.BaseMap;
import com.moxa.sooth.common.constant.GlobalConstants;
import com.moxa.sooth.core.base.config.SpringContextHolder;
import lombok.Data;
import org.springframework.stereotype.Component;


@Component
@Data
public class RedisReceiver {


    /**
     * 接受消息并调用业务逻辑处理器
     *
     * @param params
     */
    public void onMessage(BaseMap params) {
        Object handlerName = params.get(GlobalConstants.HANDLER_NAME);
        JeecgRedisListener messageListener = SpringContextHolder.getHandler(handlerName.toString(), JeecgRedisListener.class);
        if (ObjectUtil.isNotEmpty(messageListener)) {
            messageListener.onMessage(params);
        }
    }

}
