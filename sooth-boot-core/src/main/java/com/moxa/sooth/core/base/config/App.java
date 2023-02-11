package com.moxa.sooth.core.base.config;

import com.moxa.sooth.core.base.annotation.InterfacePermission;
import com.moxa.sooth.core.base.constant.SymbolConstant;
import com.moxa.sooth.core.base.controller.ModuleController;
import com.moxa.sooth.core.base.entity.AppMapping;
import com.moxa.sooth.core.base.exception.SoothBootException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Slf4j
@Component
public class App implements ApplicationContextAware {

    public static Map<String, AppMapping> APP_MAPPING = new HashMap<>(128);

    public static String CONTEXT_PATH;
    /**
     * 上下文对象实例
     */
    private static ApplicationContext applicationContext;


    /**
     * 获取HttpServletRequest
     */
    public static HttpServletRequest getHttpServletRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    }

    /**
     * 获取HttpServletResponse
     */
    public static HttpServletResponse getHttpServletResponse() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
    }

    /**
     * 通过name获取 Bean.
     *
     * @param name
     * @return
     */
    public static Object getBean(String name) {
        return applicationContext.getBean(name);
    }

    /**
     * 通过class获取Bean.
     *
     * @param clazz
     * @param <T>
     * @return
     */
    public static <T> T getBean(Class<T> clazz) {
        return applicationContext.getBean(clazz);
    }

    /**
     * 通过name,以及Clazz返回指定的Bean
     *
     * @param name
     * @param clazz
     * @param <T>
     * @return
     */
    public static <T> T getBean(String name, Class<T> clazz) {
        return applicationContext.getBean(name, clazz);
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        App.applicationContext = applicationContext;
        CONTEXT_PATH = applicationContext.getEnvironment().getProperty("server.servlet.context-path");
        RequestMappingHandlerMapping requestMappingHandlerMapping = getBean(RequestMappingHandlerMapping.class);
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
                Object bean = getBean(beanType);
                if (!(bean instanceof ModuleController)) {
                    throw new SoothBootException("开启接口权限，" + bean.getClass().getName() + "必须是" + ModuleController.class.getName() + "子类");
                }
                Set<String> patternValues = requestMappingInfo.getPatternValues();
                Set<RequestMethod> methods = requestMappingInfo.getMethodsCondition().getMethods();
                for (String patternValue : patternValues) {
                    String requestUrl = patternValue;
                    if(requestUrl.contains(SymbolConstant.LEFT_BRACE)){
                        throw new SoothBootException("接口权限暂不支持占位符："+requestUrl);
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

    private AppMapping getAppMapping(String requestUrl, String bizModule, String permission) {
        AppMapping appMapping = new AppMapping();
        appMapping.setRequestUrl(requestUrl);
        appMapping.setBizModule(bizModule);
        appMapping.setPermission(permission);
        return appMapping;
    }
}
