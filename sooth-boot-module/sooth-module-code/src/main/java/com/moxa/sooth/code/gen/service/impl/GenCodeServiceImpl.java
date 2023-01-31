package com.moxa.sooth.code.gen.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.code.gen.model.GenCodeModel;
import com.moxa.sooth.code.gen.service.IGenCodeService;
import com.moxa.sooth.code.gen.service.IGenTableFieldService;
import com.moxa.sooth.code.gen.util.TemplateUtil;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.code.template.service.IGenTemplateService;
import com.moxa.sooth.code.template.view.GenTemplate;
import com.moxa.sooth.core.base.exception.SoothBootException;
import com.moxa.sooth.core.base.util.ClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

@Service
public class GenCodeServiceImpl implements IGenCodeService {
    @Autowired
    private IGenTableFieldService genTableFieldService;
    @Autowired
    private IGenTemplateService genTemplateService;

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
                    zip.putNextEntry(new ZipEntry(genTemplate.getName()));
                    zip.write(template.getBytes(StandardCharsets.UTF_8));
                    zip.closeEntry();
                } catch (IOException e) {
                    throw new SoothBootException(e.getMessage(), e);
                }finally {
                    IoUtil.close(zip);
                    // zip压缩包数据
                    IoUtil.close(outputStream);
                }
            }
            return outputStream.toByteArray();
        } else {
            throw new SoothBootException("模板不存在");
        }
    }
}
