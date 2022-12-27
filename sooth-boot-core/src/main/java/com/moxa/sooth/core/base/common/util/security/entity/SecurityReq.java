package com.moxa.sooth.core.base.common.util.security.entity;

import lombok.Data;

/**
 * @Description: SecurityReq
 * @author: jeecg-boot
 */
@Data
public class SecurityReq {
    private String data;
    private String pubKey;
    private String signData;
    private String aesKey;
}
