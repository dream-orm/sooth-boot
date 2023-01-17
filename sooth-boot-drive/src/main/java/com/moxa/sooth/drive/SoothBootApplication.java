package com.moxa.sooth.drive;

import com.moxa.sooth.plugin.EnableModule;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableModule
@SpringBootApplication
public class SoothBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(SoothBootApplication.class, args);
    }

}
