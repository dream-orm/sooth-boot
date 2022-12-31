package com.moxa.sooth.code.template.service.impl;

import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.sooth.code.template.model.GenTemplateModel;
import com.moxa.sooth.code.template.service.IGenTemplateService;
import com.moxa.sooth.code.template.view.GenTemplate;
import com.moxa.sooth.code.template.view.GenTemplateList;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: 多数据源管理
 * @Author: jeecg-boot
 * @Date: 2019-12-25
 * @Version: V1.0
 */
@Service
public class GenTemplateServiceImpl extends ServiceImpl<GenTemplateList, GenTemplate> implements IGenTemplateService {
    @Override
    public void preview(long tableId) {

    }

    @Override
    public List<GenTemplate> selectByGroupId(Long groupId) {
        GenTemplateModel genTemplateModel = new GenTemplateModel();
        genTemplateModel.setGroupId(groupId);
        return templateMapper.selectList(GenTemplate.class, genTemplateModel);
    }
}
