package com.moxa.sooth.core.base.constant;

public interface CommonConstant {

    /**
     * {@code 500 Server Error} (HTTP/1.0 - RFC 1945)
     */
    Integer SC_INTERNAL_SERVER_ERROR_500 = 500;
    /**
     * {@code 200 OK} (HTTP/1.0 - RFC 1945)
     */
    Integer SC_OK_200 = 200;
    /**
     * 登录用户Token令牌缓存KEY前缀
     */
    String PREFIX_USER_TOKEN = "prefix_user_token_";
//    /** Token缓存时间：3600秒即一小时 */

    /**
     * 0：一级菜单
     */
    Integer MENU_TYPE_0 = 0;
    /**
     * 1：子菜单
     */
    Integer MENU_TYPE_1 = 1;
    /**
     * 2：按钮权限
     */
    Integer MENU_TYPE_2 = 2;


    String STATUS_1 = "1";


    String X_ACCESS_TOKEN = "X-Access-Token";

    String USER_AGENT = "User-Agent";

    String TOKEN_IS_INVALID_MSG = "Token失效，请重新登录!";


    /**
     * POST请求
     */
    String HTTP_POST = "POST";

    /**
     * PUT请求
     */
    String HTTP_PUT = "PUT";

    /**
     * PATCH请求
     */
    String HTTP_PATCH = "PATCH";

    /**
     * 未知的
     */
    String UNKNOWN = "unknown";

    /**
     * String 类型的空值
     */
    String STRING_NULL = "null";
}
