package com.moxa.sooth.program.view;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.program.table.ProgramMessages;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Description:
 * @Author: huha
 * @Date: 2023-02-09 23:43:10
 */
@Data
@View(ProgramMessages.class)
public class ProgramMessagesEditView {
    /**
     * 机器名称
     */
    private String machineName;
    /**
     * 程序名称
     */
    private String programName;
    /**
     * 消息内容
     */
    private String message;
    /**
     * 消息类别
     */
    private String status;
    /**
     * 创建时间
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.util.Date createTime;
    /**
     * 更新时间
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.util.Date updateTime;
}