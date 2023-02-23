package com.moxa.sooth.module.base;


import com.moxa.sooth.module.base.core.config.SoothProperties;
import com.moxa.sooth.plugin.Module;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan
@EnableConfigurationProperties(SoothProperties.class)
public class SysBaseModule implements Module {
}
