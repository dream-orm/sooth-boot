package com.moxa.sooth.module.code.template.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.moxa.dream.boot.impl.ServiceImpl;
import com.moxa.dream.system.config.Page;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.code.template.model.GenTemplateModel;
import com.moxa.sooth.module.code.template.service.IGenTemplateGroupService;
import com.moxa.sooth.module.code.template.service.IGenTemplateService;
import com.moxa.sooth.module.code.template.view.GenTemplate;
import com.moxa.sooth.module.code.template.view.GenTemplateList;
import com.moxa.sooth.module.code.template.view.SysGenGroupLV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class GenTemplateGroupServiceImpl extends ServiceImpl<SysGenGroupLV, SysGenGroupLV> implements IGenTemplateGroupService {
    @Autowired
    private IGenTemplateService genTemplateService;

    @Override
    public int deleteById(Object id) {
        GenTemplateModel genTemplateModel = new GenTemplateModel();
        genTemplateModel.setGroupId(Long.valueOf(String.valueOf(id)));
        Page<GenTemplateList> selectPage = genTemplateService.selectPage(genTemplateModel, new Page<>(1, 1));
        if (selectPage.getTotal() > 0) {
            throw new SoothException("存在模板，不能删除当前模板组");
        }
        return templateMapper.deleteById(SysGenGroupLV.class, id);
    }


    @Override
    public List<Map<String, Object>> groupList() {
        List<SysGenGroupLV> templateGroupList = selectList(null);
        List<Map<String, Object>> mapList = new ArrayList<>();
        if (CollUtil.isNotEmpty(templateGroupList)) {
            for (SysGenGroupLV sysGenGroupLV : templateGroupList) {
                Map<String, Object> map = new HashMap();
                map.put("label", sysGenGroupLV.getName());
                Long groupId = sysGenGroupLV.getId();
                List<GenTemplate> genTemplateList = genTemplateService.selectByGroupId(groupId);
                if (CollUtil.isNotEmpty(genTemplateList)) {
                    List<Map<String, Object>> optionList = genTemplateList.stream().map(genTemplate -> {
                        Map<String, Object> templateMap = new HashMap<>();
                        templateMap.put("label", genTemplate.getName());
                        templateMap.put("value", genTemplate.getId());
                        return templateMap;
                    }).collect(Collectors.toList());
                    map.put("options", optionList);
                    mapList.add(map);
                }
            }
        }
        return mapList;
    }
}
