package com.moxa.sooth.core.menu.mapper;

import com.alibaba.fastjson.JSONArray;
import com.moxa.dream.system.annotation.Mapper;
import com.moxa.sooth.core.menu.mapper.provider.SysMenuProvider;
import com.moxa.sooth.core.menu.view.SysMenu;

import java.util.List;

@Mapper(SysMenuProvider.class)
public interface SysMenuMapper {
    List<SysMenu> selectAuths(Long userId);

    JSONArray getMenu(Long userId);

}
