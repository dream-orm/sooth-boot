package com.moxa.sooth.core.base.config.filter;

import com.moxa.sooth.core.base.common.api.CommonAPI;
import com.moxa.sooth.core.base.common.util.ConvertUtils;
import com.moxa.sooth.core.base.common.util.SpringContextUtils;
import com.moxa.sooth.core.base.common.util.TokenUtils;
import com.moxa.sooth.core.base.util.RedisUtil;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Slf4j
public class WebsocketFilter implements Filter {

    private static final String TOKEN_KEY = "Sec-WebSocket-Protocol";

    private static CommonAPI commonApi;

    private static RedisUtil redisUtil;

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        if (commonApi == null) {
            commonApi = SpringContextUtils.getBean(CommonAPI.class);
        }
        if (redisUtil == null) {
            redisUtil = SpringContextUtils.getBean(RedisUtil.class);
        }
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String token = request.getHeader(TOKEN_KEY);

        log.debug("Websocket连接 Token安全校验，Path = {}，token:{}", request.getRequestURI(), token);

        try {
            TokenUtils.verifyToken(token, commonApi, redisUtil);
        } catch (Exception exception) {
            //log.error("Websocket连接 Token安全校验失败，IP:{}, Token:{}, Path = {}，异常：{}", StrUtil.getIpAddrByRequest(request), token, request.getRequestURI(), exception.getMessage());
            log.debug("Websocket连接 Token安全校验失败，IP:{}, Token:{}, Path = {}，异常：{}", ConvertUtils.getIpAddrByRequest(request), token, request.getRequestURI(), exception.getMessage());
            return;
        }
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        response.setHeader(TOKEN_KEY, token);
        filterChain.doFilter(servletRequest, servletResponse);
    }

}
