package com.moxa.sooth.core.button.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.button.table.SysButton;
import com.moxa.sooth.core.button.view.MenuButton;

import java.util.List;

public interface ISysButtonService extends IService<SysButton, SysButton> {

    void saveButton(Long roleId,List<String> buttonTypeList);

    List<MenuButton> listMenuButtonTree(Long userId);
}