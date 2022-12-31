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
 * @Description: gateway路由管理
 * @Author: jeecg-boot
 * @Date: 2020-05-26
 * @Version: V1.0
 */
@Data
@TableName("sys_gateway_route")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)

public class SysGatewayRoute extends BaseDict {
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(type = IdType.ASSIGN_ID)

    private String id;

    /**
     * routerKEy
     */

    private String routerId;

    /**
     * 服务名
     */


    private String name;

    /**
     * 服务地址
     */


    private String uri;

    /**
     * 断言配置
     */
    private String predicates;

    /**
     * 过滤配置
     */
    private String filters;

    /**
     * 是否忽略前缀0-否 1-是
     */


    @Dict(dicCode = "yn")
    @Extract(DictExtractor.class)
    private Integer stripPrefix;

    /**
     * 是否重试0-否 1-是
     */


    @Dict(dicCode = "yn")
    @Extract(DictExtractor.class)
    private Integer retryable;

    /**
     * 是否为保留数据:0-否 1-是
     */


    @Dict(dicCode = "yn")
    @Extract(DictExtractor.class)
    private Integer persistable;

    /**
     * 是否在接口文档中展示:0-否 1-是
     */


    @Dict(dicCode = "yn")
    @Extract(DictExtractor.class)
    private Integer showApi;

    /**
     * 状态 1有效 0无效
     */


    @Dict(dicCode = "yn")
    @Extract(DictExtractor.class)
    private Integer status;

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
    /*    *//**更新人*//*

    private String updateBy;
    *//**更新日期*//*
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")

    private Date updateTime;
    *//**所属部门*//*

    private String sysOrgCode;*/
}
