package com.moxa.sooth.code.baseclass.service;

import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.baseclass.model.BaseClassModel;
import com.moxa.sooth.code.baseclass.view.BaseClass;
import com.moxa.sooth.core.base.entity.Result;

import java.util.List;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
public interface IBaseClassService {

    /**
     * 添加数据源
     *
     * @param baseClass
     * @return
     */
    Result save(BaseClass baseClass);

    /**
     * 修改数据源
     *
     * @param baseClass
     * @return
     */
    Result edit(BaseClass baseClass);


    /**
     * 删除数据源
     *
     * @param id
     * @return
     */
    Result delete(String id);

    /**
     * 删除数据源
     *
     * @param ids
     * @return
     */
    int removeByIds(List<String> ids);

    /**
     * 数据源列表
     *
     * @param baseClassModel
     * @param page
     * @return
     */
    Page<BaseClass> selectPage(BaseClassModel baseClassModel, Page page);

    List<BaseClass> selectAll();
}
