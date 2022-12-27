package com.moxa.sooth.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Description: 部门角色权限
 * @Author: jeecg-boot
 * @Date: 2020-02-12
 * @Version: V1.0
 */
@Data
@TableName("sys_depart_role_permission")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class SysDepartRolePermission {

    /**
     * id
     */
    @TableId(type = IdType.ASSIGN_ID)

    private java.lang.String id;
    /**
     * 部门id
     */


    private java.lang.String departId;
    /**
     * 角色id
     */


    private java.lang.String roleId;
    /**
     * 权限id
     */


    private java.lang.String permissionId;
    /**
     * dataRuleIds
     */


    private java.lang.String dataRuleIds;
    /**
     * 操作时间
     */

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private java.util.Date operateDate;
    /**
     * 操作ip
     */
    private java.lang.String operateIp;

    public SysDepartRolePermission() {
    }

    public SysDepartRolePermission(String roleId, String permissionId) {
        this.roleId = roleId;
        this.permissionId = permissionId;
    }
}
