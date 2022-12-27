package com.moxa.sooth.core;


import com.moxa.sooth.plugin.Module;
import org.springframework.context.annotation.ComponentScan;

import java.util.Arrays;
import java.util.List;

@ComponentScan
public class SysCoreModule implements Module {
    @Override
    public List<String> tables() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }

    @Override
    public List<String> mappers() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }
}
