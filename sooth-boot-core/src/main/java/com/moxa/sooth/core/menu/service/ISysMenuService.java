package com.moxa.sooth.core.menu.service;

import com.alibaba.fastjson.JSONArray;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.menu.model.SysMenuEditModel;
import com.moxa.sooth.core.menu.model.SysMenuModel;
import com.moxa.sooth.core.menu.view.SysMenu;

import java.util.List;

public interface ISysMenuService extends IService<SysMenu, SysMenu> {

    JSONArray getMenu(Long userId);

    List<SysMenu> selectTree(SysMenuModel sysMenuModel);

    void saveRolePermission(SysMenuEditModel sysMenuEditModel);
}
