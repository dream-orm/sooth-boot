package com.moxa.sooth.module.code.template.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.code.template.view.GenTemplateGroup;

import java.util.List;
import java.util.Map;


public interface IGenTemplateGroupService extends IService<GenTemplateGroup, GenTemplateGroup> {
    List<Map<String, Object>> groupList();

}
