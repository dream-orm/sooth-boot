package com.moxa.sooth.modules.system.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseDict;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

/**
 * @Description: VO 评论信息+文件信息
 * @Author: jeecg-boot
 * @Date: 2022-07-19
 * @Version: V1.0
 */
@Data
public class SysCommentVO extends BaseDict {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
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
    private String fromUserId;
    /**
     * 回复内容
     */
    private String commentContent;
    /**
     * 创建日期
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date createTime;

    /**
     * 文件信息
     */
    private List<SysCommentFileVo> fileList;

    /**
     * 发送给用户id(允许为空)
     */
    @Dict(dictTable = "sys_user", dicCode = "id", dicText = "realname")
    @Extract(DictExtractor.class)
    private String toUserId;

    /**
     * 评论id(允许为空，不为空时，则为回复)
     */
    private String commentId;

    /**
     * 发消息人的realname
     */
    private String fromUserId_dictText;

    /**
     * 被回复消息人的realname
     */
    private String toUserId_dictText;

    /**
     * 发消息人的头像
     */
    private String fromUserAvatar;

    /**
     * 被回复消息人的头像
     */
    private String toUserAvatar;

    public SysCommentVO() {

    }

}
