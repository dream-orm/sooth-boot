package com.moxa.sooth.module.base.menu.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;


@Data
@Table("sys_menu")
public class SysMenuTable {
    /**
     * 创建时间
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 组件
     */
    @Column(value = "component", jdbcType = Types.VARCHAR)
    private String component;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 是否隐藏路由: 0否,1是
     */
    @Column(value = "hidden", jdbcType = Types.TINYINT)
    private Boolean hidden;
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 更新时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 是否隐藏tab: 0否,1是
     */
    @Column(value = "hide_tab", jdbcType = Types.TINYINT)
    private Boolean hideTab;
    /**
     * 菜单排序
     */
    @Column(value = "sort_no", jdbcType = Types.DOUBLE)
    private Double sortNo;
    /**
     * 父id
     */
    @Column(value = "parent_id", jdbcType = Types.BIGINT)
    private Long parentId;
    /**
     * 组件名字
     */
    @Column(value = "component_name", jdbcType = Types.VARCHAR)
    private String componentName;
    /**
     * 一级菜单跳转地址
     */
    @Column(value = "redirect", jdbcType = Types.VARCHAR)
    private String redirect;
    /**
     * 删除状态 0正常 1已删除
     */
    @Column(value = "del_flag", jdbcType = Types.INTEGER)
    private Integer delFlag;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
    /**
     * 聚合子路由: 1是0否
     */
    @Column(value = "fixed_tab", jdbcType = Types.BIT)
    private Boolean fixedTab;
    /**
     * 菜单标题
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)
     */
    @Column(value = "menu_type", jdbcType = Types.INTEGER)
    private Integer menuType;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 菜单图标
     */
    @Column(value = "icon", jdbcType = Types.VARCHAR)
    private String icon;
    /**
     * 路径
     */
    @Column(value = "url", jdbcType = Types.VARCHAR)
    private String url;
    /**
     * 是否缓存该页面:    1:是   0:不是
     */
    @Column(value = "keep_alive", jdbcType = Types.BIT)
    private Boolean keepAlive;
}
