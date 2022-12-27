package com.moxa.sooth.modules.system.model;

/**
 * 登录表单
 *
 * @Author scott
 * @since 2019-01-18
 */

public class SysLoginModel {

    private String username;

    private String password;

    private String captcha;

    private String checkKey;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }

    public String getCheckKey() {
        return checkKey;
    }

    public void setCheckKey(String checkKey) {
        this.checkKey = checkKey;
    }

}
