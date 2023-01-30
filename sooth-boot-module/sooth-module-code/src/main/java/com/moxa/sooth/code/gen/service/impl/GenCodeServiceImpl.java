package com.moxa.sooth.code.gen.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.code.gen.model.GenCodeModel;
import com.moxa.sooth.code.gen.service.IGenCodeService;
import com.moxa.sooth.code.gen.service.IGenTableFieldService;
import com.moxa.sooth.code.gen.service.IGenTableService;
import com.moxa.sooth.code.gen.util.TemplateUtil;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.code.template.service.IGenTemplateService;
import com.moxa.sooth.code.template.view.GenTemplate;
import com.moxa.sooth.core.base.exception.SoothBootException;
import com.moxa.sooth.core.base.util.ClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

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
    public byte[] generate(GenCodeModel genCodeModel) {
        if (StrUtil.isBlank(genCodeModel.getAuthor())) {
            genCodeModel.setAuthor(ClientUtil.getLoginUser().getUsername());
        }
        List<GenTableField> columns = genTableFieldService.selectList(genCodeModel.getId());
        genCodeModel.setColumns(columns);
        List<GenTemplate> genTemplateList = genTemplateService.selectByIds(genCodeModel.getTemplateIds());
        Map<String, Object> map = BeanUtil.beanToMap(genCodeModel);
        if (!CollUtil.isEmpty(genTemplateList)) {
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            ZipOutputStream zip = new ZipOutputStream(outputStream);
            for (GenTemplate genTemplate : genTemplateList) {
                map.put("templateName", genTemplate.getName());
                String content = genTemplate.getContent();
                String template = TemplateUtil.getContent(content, map);
                try {
                    // 添加到zip
                    zip.putNextEntry(new ZipEntry(UUID.randomUUID().toString()));
                    IoUtil.writeUtf8(zip, false, template);
                    zip.flush();
                    zip.closeEntry();
                } catch (IOException e) {
                    throw new SoothBootException(e.getMessage(), e);
                }
            }
            IoUtil.close(zip);
            // zip压缩包数据
            byte[] data = outputStream.toByteArray();
            IoUtil.close(outputStream);
            return data;
        } else {
            throw new SoothBootException("模板不存在");
        }
    }
}
