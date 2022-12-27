package com.moxa.sooth.core.base.common.system.base.controller;

import com.baomidou.mybatisplus.extension.service.IService;
import com.moxa.sooth.core.base.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Description: Controller基类
 * @Author: dangzhenghui@163.com
 * @Date: 2019-4-21 8:13
 * @Version: 1.0
 */
@Slf4j
public class SoothController<T, S extends IService<T>> {
    /**
     * issues/2933 JeecgController注入service时改用protected修饰，能避免重复引用service
     */
    @Autowired
    protected S service;

    @Value("${jeecg.path.upload}")
    private String upLoadPath;

    /**
     * 导出excel
     *
     * @param request
     */
    protected ModelAndView exportXls(HttpServletRequest request, T object, Class<T> clazz, String title) {
        return null;
    }

    /**
     * 根据每页sheet数量导出多sheet
     *
     * @param request
     * @param object       实体类
     * @param clazz        实体类class
     * @param title        标题
     * @param exportFields 导出字段自定义
     * @param pageNum      每个sheet的数据条数
     * @param request
     */
    protected ModelAndView exportXlsSheet(HttpServletRequest request, T object, Class<T> clazz, String title, String exportFields, Integer pageNum) {
        return null;
    }


    /**
     * 根据权限导出excel，传入导出字段参数
     *
     * @param request
     */
    protected ModelAndView exportXls(HttpServletRequest request, T object, Class<T> clazz, String title, String exportFields) {
        return null;
    }

    /**
     * 获取对象ID
     *
     * @return
     */
    private String getId(T item) {
        try {
            return PropertyUtils.getProperty(item, "id").toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 通过excel导入数据
     *
     * @param request
     * @param response
     * @return
     */
    protected Result<?> importExcel(HttpServletRequest request, HttpServletResponse response, Class<T> clazz) {
        return Result.ok();
    }
}
