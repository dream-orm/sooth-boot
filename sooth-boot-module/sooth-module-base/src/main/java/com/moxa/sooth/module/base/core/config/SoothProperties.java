package com.moxa.sooth.module.base.core.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.List;

@Data
@ConfigurationProperties(SoothProperties.SOOTH)
public class SoothProperties {
    public static final String SOOTH = "sooth";

    private String defaultPassword = "123456";

    private List<String> excludeUrls;
}
