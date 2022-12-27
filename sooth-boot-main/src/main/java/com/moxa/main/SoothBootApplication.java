package com.moxa.main;

import com.moxa.sooth.plugin.EnableModule;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@Slf4j
@EnableModule
//@MapperScan({"com.moxa.main", "com.moxa.sooth.config.**.mapper*", "com.moxa.sooth.modules.**.mapper*", "com.moxa.sooth.common.**.mapper*"})
//@ComponentScan({"com.moxa.main", "com.moxa.sooth.config", "com.moxa.sooth.modules", "com.moxa.sooth.common"})
@SpringBootApplication
public class SoothBootApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(SoothBootApplication.class, args);
    }

}
