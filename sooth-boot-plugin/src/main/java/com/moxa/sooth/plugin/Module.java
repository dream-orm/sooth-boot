package com.moxa.sooth.plugin;

import java.util.Arrays;
import java.util.List;

public interface Module {

    default List<String> tables() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }

    default List<String> mappers() {
        return Arrays.asList(this.getClass().getPackage().getName());
    }
}
