package com.moxa.sooth.code.template.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.code.template.model.GenTemplateModel;
import com.moxa.sooth.code.template.service.IGenTemplateGroupService;
import com.moxa.sooth.code.template.service.IGenTemplateService;
import com.moxa.sooth.code.template.view.GenTemplateGroup;
import com.moxa.sooth.code.template.view.GenTemplateList;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Service
public class GenTemplateGroupServiceImpl extends ServiceImpl<GenTemplateGroup, GenTemplateGroup> implements IGenTemplateGroupService {
    @Autowired
    private IGenTemplateService genTemplateService;

    @Override
    public int deleteById(Object id) {
        GenTemplateModel genTemplateModel = new GenTemplateModel();
        genTemplateModel.setGroupId(Long.valueOf(String.valueOf(id)));
        Page<GenTemplateList> selectPage = genTemplateService.selectPage(genTemplateModel, new Page<>(1, 1));
        if (selectPage.getTotal() > 0) {
            throw new SoothBootException("存在模板，不能删除当前模板组");
        }
        return templateMapper.deleteById(GenTemplateGroup.class, id);
    }
}