package com.moxa.sooth.code;


import com.moxa.sooth.plugin.Module;
import org.springframework.context.annotation.ComponentScan;

import java.util.Arrays;
import java.util.List;

@ComponentScan
public class CodeCoreModule implements Module {
    public List<String> tables() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }

    public List<String> mappers() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }
}
