package com.moxa.sooth.program;


import com.moxa.sooth.plugin.Module;
import org.springframework.context.annotation.ComponentScan;

import java.util.Arrays;
import java.util.List;

@ComponentScan
public class ProgramModule implements Module {
    public List<String> tables() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }

    public List<String> mappers() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }
}
