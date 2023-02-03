package com.moxa.sooth.core.menu.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.menu.table.SysMenuTable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View(SysMenuTable.class)
public class SysMenu extends BaseEntity {

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
     * 聚合路由
     */
    private boolean fixedTab;
    /**
     * 是否缓存该页面:    1:是   0:不是
     */
    private boolean keepAlive;
}
