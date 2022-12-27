package com.moxa.sooth.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @Description: 编码校验规则
 * @Author: jeecg-boot
 * @Date: 2020-02-04
 * @Version: V1.0
 */
@Data
@TableName("sys_check_rule")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class SysCheckRule {

    /**
     * 主键id
     */
    @TableId(type = IdType.ASSIGN_ID)

    private String id;
    /**
     * 规则名称
     */


    private String ruleName;
    /**
     * 规则Code
     */


    private String ruleCode;
    /**
     * 规则JSON
     */


    private String ruleJson;
    /**
     * 规则描述
     */


    private String ruleDescription;
    /**
     * 更新人
     */


    private String updateBy;
    /**
     * 更新时间
     */

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date updateTime;
    /**
     * 创建人
     */


    private String createBy;
    /**
     * 创建时间
     */

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date createTime;
}
