package com.moxa.main;

import com.moxa.sooth.plugin.EnableModule;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@Slf4j
@EnableModule
@SpringBootApplication
public class SoothBootApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(SoothBootApplication.class, args);
    }

}
