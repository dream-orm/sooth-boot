package com.moxa.main;

import com.moxa.dream.boot.bean.ConfigurationBean;
import com.moxa.dream.drive.listener.DebugListener;
import com.moxa.dream.system.cache.CacheFactory;
import com.moxa.dream.system.core.listener.Listener;
import com.moxa.dream.template.sequence.Sequence;
import com.moxa.sooth.core.base.dream.SnowFlakeSequence;
import com.moxa.sooth.plugin.Module;
import com.moxa.sooth.plugin.ModuleSelector;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

@Configuration
public class DreamConfig {
    private List<String> tableList = new ArrayList<>();
    private List<String> mapperList = new ArrayList<>();

    @Bean
    public ConfigurationBean configurationBean() {
        List<Module> moduleList = ModuleSelector.MODULE_LIST;
        for (Module module : moduleList) {
            tableList.addAll(module.tables());
            mapperList.addAll(module.mappers());
        }
        return new ConfigurationBean(tableList, mapperList);
    }

    @Bean
    public Listener[] listeners() {
        return new Listener[]{new DebugListener()};
    }

    @Bean
    public Sequence sequence() {
        return new SnowFlakeSequence();
    }

    @Bean
    public CacheFactory cacheFactory() {
        return ()->null;
    }

}
