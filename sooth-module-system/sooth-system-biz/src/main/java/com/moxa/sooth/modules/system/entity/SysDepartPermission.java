package com.moxa.sooth.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 部门权限表
 * @Author: jeecg-boot
 * @Date: 2020-02-11
 * @Version: V1.0
 */
@Data
@TableName("sys_depart_permission")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class SysDepartPermission {

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
     * 权限id
     */


    private java.lang.String permissionId;
    /**
     * 数据规则id
     */

    private java.lang.String dataRuleIds;

    public SysDepartPermission() {

    }

    public SysDepartPermission(String departId, String permissionId) {
        this.departId = departId;
        this.permissionId = permissionId;
    }
}
