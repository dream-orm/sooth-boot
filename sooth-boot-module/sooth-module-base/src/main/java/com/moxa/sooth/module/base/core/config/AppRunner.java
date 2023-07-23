package com.moxa.sooth.module.base.core.config;

import com.moxa.sooth.module.base.core.annotation.InterfacePermission;
import com.moxa.sooth.module.base.core.constant.SymbolConstant;
import com.moxa.sooth.module.base.core.controller.ModuleController;
import com.moxa.sooth.module.base.core.entity.AppMapping;
import com.moxa.sooth.module.base.core.exception.SoothException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Slf4j
@Component
public class AppRunner implements ApplicationRunner {

    public static Map<String, AppMapping> APP_MAPPING = new HashMap<>();

    public static String CONTEXT_PATH;

    private AppMapping getAppMapping(String requestUrl, String bizModule, String permission) {
        AppMapping appMapping = new AppMapping();
        appMapping.setRequestUrl(requestUrl);
        appMapping.setBizModule(bizModule);
        appMapping.setPermission(permission);
        return appMapping;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        CONTEXT_PATH = App.getEnvironment().getProperty("server.servlet.context-path");
        RequestMappingHandlerMapping requestMappingHandlerMapping = App.getBean(RequestMappingHandlerMapping.class);
        Map<RequestMappingInfo, HandlerMethod> handlerMethods = requestMappingHandlerMapping.getHandlerMethods();
        Iterator<Map.Entry<RequestMappingInfo, HandlerMethod>> entryIterator = handlerMethods.entrySet().iterator();
        while (entryIterator.hasNext()) {
            Map.Entry<RequestMappingInfo, HandlerMethod> methodEntry = entryIterator.next();
            RequestMappingInfo requestMappingInfo = methodEntry.getKey();
            HandlerMethod handlerMethod = methodEntry.getValue();
            Method method = handlerMethod.getMethod();
            InterfacePermission interfacePermissionAnnotation = method.getAnnotation(InterfacePermission.class);
            if (interfacePermissionAnnotation != null) {
                Class<?> beanType = handlerMethod.getBeanType();
                Object bean = App.getBean(beanType);
                if (!(bean instanceof ModuleController)) {
                    throw new SoothException("开启接口权限，" + bean.getClass().getName() + "必须是" + ModuleController.class.getName() + "子类");
                }
                Set<String> patternValues = requestMappingInfo.getPatternValues();
                Set<RequestMethod> methods = requestMappingInfo.getMethodsCondition().getMethods();
                for (String patternValue : patternValues) {
                    String requestUrl = patternValue;
                    if (requestUrl.contains(SymbolConstant.LEFT_BRACE)) {
                        throw new SoothException("接口权限暂不支持占位符：" + requestUrl);
                    }
                    ModuleController moduleController = (ModuleController) bean;
                    String bizModule = moduleController.getBizModule();
                    String permission = interfacePermissionAnnotation.value();
                    if (!methods.isEmpty()) {
                        for (RequestMethod requestMethod : methods) {
                            requestUrl = requestMethod.name() + ":" + requestUrl;
                            APP_MAPPING.put(requestUrl, getAppMapping(requestUrl, bizModule, permission));
                        }
                    } else {
                        APP_MAPPING.put(requestUrl, getAppMapping(requestUrl, bizModule, permission));
                    }
                }
            }
        }
    }
}
