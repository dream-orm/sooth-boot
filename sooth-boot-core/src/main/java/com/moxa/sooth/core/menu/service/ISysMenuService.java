package com.moxa.sooth.core.menu.service;

import com.alibaba.fastjson.JSONArray;
import com.moxa.dream.template.service.IService;
import com.moxa.sooth.core.menu.model.SysMenuEditModel;
import com.moxa.sooth.core.menu.model.SysMenuModel;
import com.moxa.sooth.core.menu.view.SysMenu;
import com.moxa.sooth.core.menu.view.SysMenuListView;

import java.util.List;

public interface ISysMenuService extends IService<SysMenuListView, SysMenu> {

    JSONArray getMenu(Long userId);

    List<SysMenuListView> listMenuTree(SysMenuModel sysMenuModel);

    void saveRolePermission(SysMenuEditModel sysMenuEditModel);
}
