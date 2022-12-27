package com.moxa.sooth.code.fieldtype.service;

import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.fieldtype.model.FieldTypeModel;
import com.moxa.sooth.code.fieldtype.view.FieldType;
import com.moxa.sooth.core.base.entity.Result;

import java.util.List;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
public interface IFieldTypeService {

    /**
     * 添加数据源
     *
     * @param fieldType
     * @return
     */
    Result save(FieldType fieldType);

    /**
     * 修改数据源
     *
     * @param fieldType
     * @return
     */
    Result edit(FieldType fieldType);


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
     * @param fieldTypeModel
     * @param page
     * @return
     */
    Page<FieldType> selectPage(FieldTypeModel fieldTypeModel, Page page);

    List<FieldType> selectAll();

    FieldType selectById(int id);

    void initFieldType();

    List listAttrType();
}
