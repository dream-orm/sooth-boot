package com.moxa.sooth.module.base.menu.view;

import com.moxa.dream.system.annotation.Ignore;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.annotation.Wrap;
import com.moxa.dream.template.resulthandler.Tree;
import com.moxa.dream.template.wrap.ZeroWrapper;
import com.moxa.sooth.module.base.core.annotation.Dict;
import com.moxa.sooth.module.base.core.entity.BaseDict;
import com.moxa.sooth.module.base.menu.table.SysMenuTable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.util.List;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View(SysMenuTable.class)
public class SysMenuListView extends BaseDict implements Tree<Long> {
    /**
     * id
     */
    private Long id;

    /**
     * 父id
     */
    private Long parentId;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 菜单图标
     */
    private String icon;

    /**
     * 组件
     */
    private String component;

    /**
     * 组件名字
     */
    private String componentName;
    /**
     * 路径
     */
    private String url;
    /**
     * 一级菜单跳转地址
     */
    private String redirect;

    /**
     * 菜单排序
     */
    private Double sortNo;

    /**
     * 类型（0：一级菜单；1：子菜单 ；2：按钮权限）
     */
    @Dict(code = "menu_type")

    private Integer menuType;

    /**
     * 描述
     */
    private String description;
    /**
     * 删除状态 0正常 1已删除
     */
    @Wrap(ZeroWrapper.class)
    private Integer delFlag;

    /**
     * 是否隐藏路由菜单: 0否,1是（默认值0）
     */
    private boolean hidden;

    /**
     * 是否隐藏Tab: 0否,1是（默认值0）
     */
    private boolean hideTab;

    /**
     * alwaysShow
     */
    private boolean fixedTab;
    /**
     * 是否缓存该页面:    1:是   0:不是
     */
    private boolean keepAlive;

    @Ignore(setter = true)
    private String[] buttonTypeList;

    @Ignore
    private List<SysMenuListView> children;

    @Override
    public Long getTreeId() {
        return id;
    }

    @Override
    public List<SysMenuListView> getChildren() {
        return children;
    }

    @Override
    public void setChildren(List<? extends Tree> children) {
        this.children = (List<SysMenuListView>) children;
    }
}
