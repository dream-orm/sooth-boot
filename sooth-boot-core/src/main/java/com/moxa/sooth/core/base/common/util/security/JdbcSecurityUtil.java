package com.moxa.sooth.core.base.common.util.security;

import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.core.base.common.exception.SoothBootException;

/**
 * jdbc连接校验
 *
 * @Author taoYan
 * @Date 2022/8/10 18:15
 **/
public class JdbcSecurityUtil {

    /**
     * 连接驱动漏洞 最新版本修复后，可删除相应的key
     * postgre：authenticationPluginClassName, sslhostnameverifier, socketFactory, sslfactory, sslpasswordcallback
     * https://github.com/pgjdbc/pgjdbc/security/advisories/GHSA-v7wg-cpwc-24m4
     */
    public static final String[] notAllowedProps = new String[]{"authenticationPluginClassName", "sslhostnameverifier", "socketFactory", "sslfactory", "sslpasswordcallback"};

    /**
     * 校验sql是否有特定的key
     *
     * @param jdbcUrl
     * @return
     */
    public static void validate(String jdbcUrl) {
        if (StrUtil.isEmpty(jdbcUrl)) {
            return;
        }
        String urlConcatChar = "?";
        if (jdbcUrl.indexOf(urlConcatChar) < 0) {
            return;
        }
        String argString = jdbcUrl.substring(jdbcUrl.indexOf(urlConcatChar) + 1);
        String[] keyAndValues = argString.split("&");
        for (String temp : keyAndValues) {
            String key = temp.split("=")[0];
            for (String prop : notAllowedProps) {
                if (prop.equalsIgnoreCase(key)) {
                    throw new SoothBootException("连接地址有安全风险，【" + key + "】");
                }
            }
        }
    }

}
