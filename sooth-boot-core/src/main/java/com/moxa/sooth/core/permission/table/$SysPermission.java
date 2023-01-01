package com.moxa.sooth.core.permission.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;
import java.util.Date;


@Data
@Table("sys_permission")
public class $SysPermission {
    /**
     * 菜单权限编码
     */
    @Column(value = "perms", jdbcType = Types.VARCHAR)
    private String perms;
    /**
     * 按钮权限状态(0无效1有效)
     */
    @Column(value = "status", jdbcType = Types.VARCHAR)
    private String status;
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
    @Column(value = "hidden", jdbcType = Types.BOOLEAN)
    private Boolean hidden;
    /**
     * 权限策略1显示2禁用
     */
    @Column(value = "perms_type", jdbcType = Types.VARCHAR)
    private String permsType;
    /**
     * 外链菜单打开方式 0/内部打开 1/外部打开
     */
    @Column(value = "internal_or_external", jdbcType = Types.BIT)
    private Boolean internalOrExternal;
    /**
     * 主键id
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 是否路由菜单: 0:不是  1:是（默认值1）
     */
    @Column(value = "route", jdbcType = Types.BOOLEAN)
    private Boolean route;
    /**
     * 更新时间
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 是否隐藏tab: 0否,1是
     */
    @Column(value = "hide_tab", jdbcType = Types.BOOLEAN)
    private Boolean hideTab;
    /**
     * 菜单排序
     */
    @Column(value = "sort_no", jdbcType = Types.DOUBLE)
    private Double sortNo;
    /**
     * 父id
     */
    @Column(value = "parent_id", jdbcType = Types.VARCHAR)
    private String parentId;
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
    @Column(value = "always_show", jdbcType = Types.BIT)
    private Boolean alwaysShow;
    /**
     * 菜单标题
     */
    @Column(value = "name", jdbcType = Types.VARCHAR)
    private String name;
    /**
     * 是否叶子节点:    1是0否
     */
    @Column(value = "leaf", jdbcType = Types.BOOLEAN)
    private Boolean leaf;
    /**
     * 菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)
     */
    @Column(value = "menu_type", jdbcType = Types.INTEGER)
    private Integer menuType;
    /**
     * 是否添加数据权限1是0否
     */
    @Column(value = "rule_flag", jdbcType = Types.INTEGER)
    private Integer ruleFlag;
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
