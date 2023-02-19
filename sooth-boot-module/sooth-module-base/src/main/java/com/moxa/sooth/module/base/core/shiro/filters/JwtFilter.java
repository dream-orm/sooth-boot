package com.moxa.sooth.module.base.core.shiro.filters;

import com.moxa.sooth.module.base.core.config.AppRunner;
import com.moxa.sooth.module.base.core.constant.CommonConstant;
import com.moxa.sooth.module.base.core.shiro.JwtToken;
import com.moxa.sooth.module.base.core.util.ClientUtil;
import com.moxa.sooth.module.base.core.util.JwtUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.web.filter.authc.BasicHttpAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.stereotype.Component;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.util.Set;

@Slf4j
@Component
public class JwtFilter extends BasicHttpAuthenticationFilter {
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        try {
            executeLogin(request, response);
        } catch (Exception e) {
            JwtUtil.responseError(response, 401, CommonConstant.TOKEN_IS_INVALID_MSG);
            return false;
        }
        HttpServletRequest servletRequest = WebUtils.toHttp(request);
        String method = servletRequest.getMethod();
        String uri = WebUtils.toHttp(request).getRequestURI();
        if (AppRunner.CONTEXT_PATH != null) {
            uri = uri.substring(AppRunner.CONTEXT_PATH.length());
        }
        String requestUrl = method + ":" + uri;
        if (!AppRunner.APP_MAPPING.containsKey(requestUrl)) {
            if (AppRunner.APP_MAPPING.containsKey(uri)) {
                requestUrl = uri;
            } else {
                requestUrl = null;
            }
        }
        if (requestUrl != null) {
            Set<String> permissionUrls = ClientUtil.getLoginUser().getPermissionUrls();
            if (!permissionUrls.contains(requestUrl)) {
                JwtUtil.responseError(response, 403, CommonConstant.INVALID_PERMISSION);
                return false;
            }
        }
        return true;
    }

    @Override
    protected boolean executeLogin(ServletRequest request, ServletResponse response) throws Exception {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String token = httpServletRequest.getHeader(CommonConstant.X_ACCESS_TOKEN);
        JwtToken jwtToken = new JwtToken(token);
        getSubject(request, response).login(jwtToken);
        return true;
    }
}
