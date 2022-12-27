package com.moxa.sooth.code.gen.service.impl;

import com.moxa.dream.template.mapper.TemplateMapper;
import com.moxa.sooth.code.gen.model.GenTableFieldModel;
import com.moxa.sooth.code.gen.service.IGenTableFieldService;
import com.moxa.sooth.code.gen.view.GenTableField;
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
public class GenTableFieldServiceImpl implements IGenTableFieldService {
    @Autowired
    private TemplateMapper templateMapper;

    @Override
    public void batchSave(List<GenTableField> genTableFieldList) {
        templateMapper.batchInsert(genTableFieldList);
    }

    @Override
    public List<GenTableField> selectList(Long tableId) {
        GenTableFieldModel genTableFieldModel = new GenTableFieldModel();
        genTableFieldModel.setTableId(tableId);
        return templateMapper.selectList(GenTableField.class, genTableFieldModel);
    }
}
