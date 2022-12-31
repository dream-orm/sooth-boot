package com.moxa.sooth.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @Description: 系统评论回复表
 * @Author: jeecg-boot
 * @Date: 2022-07-19
 * @Version: V1.0
 */
@Data
@TableName("sys_comment")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)

public class SysComment extends BaseDict {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @TableId(type = IdType.ASSIGN_ID)

    private String id;
    /**
     * 表名
     */


    private String tableName;
    /**
     * 数据id
     */


    private String tableDataId;
    /**
     * 来源用户id
     */


    @Dict(dictTable = "sys_user", dicCode = "id", dicText = "realname")
    @Extract(DictExtractor.class)
    private String fromUserId;
    /**
     * 发送给用户id(允许为空)
     */


    @Dict(dictTable = "sys_user", dicCode = "id", dicText = "realname")
    @Extract(DictExtractor.class)
    private String toUserId;
    /**
     * 评论id(允许为空，不为空时，则为回复)
     */


    @Dict(dictTable = "sys_comment", dicCode = "id", dicText = "comment_content")
    @Extract(DictExtractor.class)
    private String commentId;
    /**
     * 回复内容
     */


    private String commentContent;
    /**
     * 创建人
     */

    private String createBy;
    /**
     * 创建日期
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date createTime;
    /**
     * 更新人
     */

    private String updateBy;
    /**
     * 更新日期
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date updateTime;
}
