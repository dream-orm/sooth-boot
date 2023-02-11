package com.moxa.sooth.core.dict.service;


import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.dict.view.SysDictItemView;

import java.util.List;

public interface ISysDictItemService extends IService<SysDictItemView, SysDictItemView> {

    List<SysDictItemView> getDictItems(String code);

    int deleteByDictId(Object id);
}
