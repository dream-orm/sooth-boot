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
 * @Description: 表单评论文件
 * @Author: jeecg-boot
 * @Date: 2022-07-21
 * @Version: V1.0
 */
@Data
@TableName("sys_form_file")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)

public class SysFormFile {

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
     * 关联文件id
     */


    private String fileId;
    /**
     * 文档类型（folder:文件夹 excel:excel doc:word pp:ppt image:图片  archive:其他文档 video:视频）
     */


    private String fileType;
    /**
     * 创建人登录名称
     */


    private String createBy;
    /**
     * 创建日期
     */

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date createTime;
}
