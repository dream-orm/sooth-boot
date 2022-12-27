package com.moxa.sooth.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 部门角色人员信息
 * @Author: jeecg-boot
 * @Date: 2020-02-13
 * @Version: V1.0
 */
@Data
@TableName("sys_depart_role_user")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class SysDepartRoleUser {

    /**
     * 主键id
     */
    @TableId(type = IdType.ASSIGN_ID)

    private java.lang.String id;
    /**
     * 用户id
     */


    private java.lang.String userId;
    /**
     * 角色id
     */


    private java.lang.String droleId;

    public SysDepartRoleUser() {

    }

    public SysDepartRoleUser(String userId, String droleId) {
        this.userId = userId;
        this.droleId = droleId;
    }
}
