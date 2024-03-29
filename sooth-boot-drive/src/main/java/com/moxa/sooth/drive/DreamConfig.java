package com.moxa.sooth.drive;

import com.moxa.dream.antlr.invoker.Invoker;
import com.moxa.dream.boot.bean.ConfigurationBean;
import com.moxa.dream.mate.block.inject.BlockInject;
import com.moxa.dream.mate.block.invoker.BlockInvoker;
import com.moxa.dream.mate.logic.inject.LogicInject;
import com.moxa.dream.mate.logic.invoker.LogicInvoker;
import com.moxa.dream.mate.permission.inject.PermissionInject;
import com.moxa.dream.mate.permission.invoker.PermissionGetInvoker;
import com.moxa.dream.mate.permission.invoker.PermissionInjectInvoker;
import com.moxa.dream.system.inject.Inject;
import com.moxa.dream.system.inject.PageInject;
import com.moxa.dream.template.sequence.Sequence;
import com.moxa.sooth.module.base.core.dream.handler.SoothPermissionHandler;
import com.moxa.sooth.module.base.core.dream.sequence.SnowFlakeSequence;
import com.moxa.sooth.plugin.Module;
import com.moxa.sooth.plugin.ModuleSelector;
import com.zaxxer.hikari.HikariDataSource;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
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
    public Sequence sequence() {
        return new SnowFlakeSequence();
    }

    @Bean
    public Invoker[] invokers() {
        return new Invoker[]{new PermissionInjectInvoker(), new PermissionGetInvoker(), new BlockInvoker("key.txt"), new LogicInvoker()};
    }

    @Bean
    public Inject[] injects() {
        return new Inject[]{new PermissionInject(new SoothPermissionHandler()),new PageInject(false), new BlockInject(), new LogicInject(() -> "del_flag")};
    }

    @Bean
    @ConfigurationProperties(prefix = "spring.datasource.master")
    public DataSource dataSource() {
        return new HikariDataSource();
    }
}
