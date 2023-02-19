package com.moxa.sooth.module.base.core.dream.extract;

import com.moxa.dream.system.extractor.Extractor;
import com.moxa.dream.util.reflection.factory.ObjectFactory;
import com.moxa.sooth.module.base.core.util.SecurityUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class PasswordExtractor implements Extractor {
    @Override
    public void extract(String property, Object value, ObjectFactory objectFactory) {
        if (value == null) {
            return;
        }
        try {
            value = SecurityUtil.decrypt(value.toString());
        } catch (Exception e) {
            log.error("解密失败：" + e.getMessage());
        }
        objectFactory.set(property, value);
    }
}
