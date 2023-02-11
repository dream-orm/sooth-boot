package com.moxa.sooth.core.dict.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.dict.view.SysDictView;


public interface ISysDictService extends IService<SysDictView, SysDictView> {


    String getDictItemName(String code, Object value);
}
