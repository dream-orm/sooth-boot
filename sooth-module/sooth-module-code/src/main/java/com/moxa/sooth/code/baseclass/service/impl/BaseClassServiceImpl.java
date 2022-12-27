package com.moxa.sooth.code.baseclass.service.impl;

import com.moxa.dream.system.config.Page;
import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.sooth.code.baseclass.mapper.BaseClassMapper;
import com.moxa.sooth.code.baseclass.model.BaseClassModel;
import com.moxa.sooth.code.baseclass.service.IBaseClassService;
import com.moxa.sooth.code.baseclass.view.BaseClass;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import com.moxa.sooth.core.base.entity.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Service
public class BaseClassServiceImpl implements IBaseClassService {
    @Autowired
    private TemplateMapper templateMapper;
    @Autowired
    private BaseClassMapper baseClassMapper;

    @Override
    public Result save(BaseClass baseClass) {
        if (baseClassMapper.selectByName(baseClass.getName()) != null) {
            throw new SoothBootException("字段类型" + baseClass.getName() + "已经存在");
        }
        templateMapper.insert(baseClass);
        return Result.OK("添加成功！");
    }

    @Override
    public Result edit(BaseClass baseClass) {
        Long id = baseClassMapper.selectByName(baseClass.getName());
        if (id != null && id != baseClass.getId()) {
            throw new SoothBootException("字段类型" + baseClass.getName() + "已经存在");
        }
        templateMapper.updateById(baseClass);
        return Result.OK("编辑成功!");
    }

    @Override
    public Result delete(String id) {
        templateMapper.deleteById(BaseClass.class, id);
        return Result.OK("删除成功!");
    }

    @Override
    public int removeByIds(List<String> ids) {
        return templateMapper.deleteByIds(BaseClass.class, ids);
    }

    @Override
    public Page<BaseClass> selectPage(BaseClassModel baseClassModel, Page page) {
        return templateMapper.selectPage(BaseClass.class, baseClassModel, page);
    }

    @Override
    public List<BaseClass> selectAll() {
        return baseClassMapper.selectAll();
    }
}
