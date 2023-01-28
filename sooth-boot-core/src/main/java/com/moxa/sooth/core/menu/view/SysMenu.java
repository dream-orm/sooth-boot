package com.moxa.sooth.core.menu.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.resulthandler.Tree;
import com.moxa.sooth.core.base.annotation.Dict;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.menu.table.SysMenuTable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.util.List;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View(SysMenuTable.class)
public class SysMenu extends BaseEntity implements Tree<Long> {

    private List<SysMenu> children;
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
    private boolean alwaysShow;
    /**
     * 是否缓存该页面:    1:是   0:不是
     */
    private boolean keepAlive;

    @Override
    public Long getTreeId() {
        return id;
    }

    @Override
    public List<SysMenu> getChildren() {
        return children;
    }

    @Override
    public void setChildren(List<? extends Tree> children) {
        this.children = (List<SysMenu>) children;
    }
}
