package com.moxa.sooth.core.base.common.constant;

public interface CommonConstant {

    /**
     * 正常状态
     */
    Integer STATUS_NORMAL = 0;

    /**
     * 禁用状态
     */
    Integer STATUS_DISABLE = -1;

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


    Integer USER_FREEZE = 1;


    String X_ACCESS_TOKEN = "X-Access-Token";


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

    /**
     * http:// http协议
     */
    String HTTP_PROTOCOL = "http://";

    /**
     * https:// https协议
     */
    String HTTPS_PROTOCOL = "https://";


}
