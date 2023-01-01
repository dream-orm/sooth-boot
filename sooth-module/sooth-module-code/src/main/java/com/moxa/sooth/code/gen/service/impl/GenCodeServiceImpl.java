package com.moxa.sooth.code.gen.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.code.gen.model.GenCodeModel;
import com.moxa.sooth.code.gen.service.IGenCodeService;
import com.moxa.sooth.code.gen.service.IGenTableFieldService;
import com.moxa.sooth.code.gen.service.IGenTableService;
import com.moxa.sooth.code.gen.util.TemplateUtil;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.code.template.service.IGenTemplateService;
import com.moxa.sooth.code.template.view.GenTemplate;
import com.moxa.sooth.core.base.util.ClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class GenCodeServiceImpl implements IGenCodeService {
    @Autowired
    private IGenTableService genTableService;
    @Autowired
    private IGenTableFieldService genTableFieldService;
    @Autowired
    private IGenTemplateService genTemplateService;

    @Override
    public void preview(long tableId) {

    }

    @Override
    public void generate(GenCodeModel genCodeModel) {
        if (StrUtil.isBlank(genCodeModel.getAuthor())) {
            genCodeModel.setAuthor(ClientUtil.getLoginUser().getUsername());
        }
        List<GenTableField> columns = genTableFieldService.selectList(genCodeModel.getId());
        genCodeModel.setColumns(columns);
        List<GenTemplate> genTemplateList = genTemplateService.selectByGroupId(genCodeModel.getGroupId());
        Map<String, Object> map = BeanUtil.beanToMap(genCodeModel);
        if (!CollUtil.isEmpty(genTemplateList)) {
            for (GenTemplate genTemplate : genTemplateList) {
                String content = genTemplate.getContent();
                String template = TemplateUtil.getContent(content, map);
            }
        }
    }
}
