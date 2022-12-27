package com.moxa.sooth.plugin;

import org.springframework.context.annotation.ImportSelector;
import org.springframework.core.type.AnnotationMetadata;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import java.util.stream.Collectors;

public class ModuleSelector implements ImportSelector {
    public static final List<Module> MODULE_LIST = new ArrayList<>();

    static {
        ServiceLoader<Module> serviceLoader = ServiceLoader.load(Module.class);
        if (serviceLoader != null) {
            Iterator<Module> pluginIterator = serviceLoader.iterator();
            while (pluginIterator.hasNext()) {
                Module module = pluginIterator.next();
                MODULE_LIST.add(module);
            }
        }
    }

    @Override
    public String[] selectImports(AnnotationMetadata importingClassMetadata) {
        String[] importList = MODULE_LIST.stream().map(module -> module.getClass().getName()).collect(Collectors.toList()).toArray(new String[0]);
        return importList;
    }
}
