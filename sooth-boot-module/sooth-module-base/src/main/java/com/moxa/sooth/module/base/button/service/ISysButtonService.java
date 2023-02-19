package com.moxa.sooth.module.base.button.service;

import com.moxa.dream.template.service.IService;
import com.moxa.sooth.module.base.button.table.SysButton;
import com.moxa.sooth.module.base.button.view.MenuButton;

import java.util.List;

public interface ISysButtonService extends IService<SysButton, SysButton> {

    void saveButton(Long roleId, List<String> buttonTypeList);

    List<MenuButton> listMenuButtonTree(Long userId);
}
