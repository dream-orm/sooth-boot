package com.moxa.sooth.core.base.util;


import cn.hutool.core.util.CharsetUtil;
import cn.hutool.crypto.symmetric.SymmetricAlgorithm;
import cn.hutool.crypto.symmetric.SymmetricCrypto;

public class SecurityUtil {
    /**
     * 加密key
     */
    private static final String key = "DreamDriveSooth!";

    //---AES加密---------begin---------

    /**
     * 加密
     *
     * @param content
     * @return
     */
    public static String encrypt(String content) {
        SymmetricCrypto aes = new SymmetricCrypto(SymmetricAlgorithm.AES, key.getBytes());
        String encryptResultStr = aes.encryptHex(content);
        return encryptResultStr;
    }

    /**
     * 解密
     *
     * @param encryptResultStr
     * @return
     */
    public static String decrypt(String encryptResultStr) {
        SymmetricCrypto aes = new SymmetricCrypto(SymmetricAlgorithm.AES, key.getBytes());
        //解密为字符串
        String decryptResult = aes.decryptStr(encryptResultStr, CharsetUtil.CHARSET_UTF_8);
        return decryptResult;
    }
}
