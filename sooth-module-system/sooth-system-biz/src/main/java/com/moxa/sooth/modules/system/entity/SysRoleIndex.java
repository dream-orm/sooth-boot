package com.moxa.sooth.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Description: 角色首页配置
 * @Author: liusq
 * @Date: 2022-03-25
 * @Version: V1.0
 */
@Data
@TableName("sys_role_index")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class SysRoleIndex {

    /**
     * id
     */
    @TableId(type = IdType.ASSIGN_ID)

    private java.lang.String id;
    /**
     * 角色编码
     */


    private java.lang.String roleCode;
    /**
     * 路由地址
     */


    private java.lang.String url;
    /**
     * 路由地址
     */


    private java.lang.String component;
    /**
     * 是否路由菜单: 0:不是  1:是（默认值1）
     */


    @TableField(value = "is_route")
    private boolean route;
    /**
     * 优先级
     */


    private java.lang.Integer priority;
    /**
     * 路由地址
     */


    private java.lang.String status;
    /**
     * 创建人登录名称
     */


    private java.lang.String createBy;
    /**
     * 创建日期
     */

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private java.util.Date createTime;
    /**
     * 更新人登录名称
     */


    private java.lang.String updateBy;
    /**
     * 更新日期
     */

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private java.util.Date updateTime;
    /**
     * 所属部门
     */


    private java.lang.String sysOrgCode;


    public SysRoleIndex() {

    }

    public SysRoleIndex(String componentUrl) {
        this.component = componentUrl;
    }
}
