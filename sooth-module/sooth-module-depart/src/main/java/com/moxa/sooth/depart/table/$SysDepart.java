package com.moxa.sooth.depart.table;

import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import com.moxa.dream.system.annotation.Column;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 组织机构  sys_depart
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_depart")
public class $SysDepart{
    /**
     *机构编码
     */
    @Column(value = "org_code", jdbcType =Types.VARCHAR)
    private String orgCode;
    /**
     *更新日期
     */
    @Column(value = "update_time", jdbcType =Types.TIMESTAMP)
    private Date updateTime;
    /**
     *缩写
     */
    @Column(value = "depart_name_abbr", jdbcType =Types.VARCHAR)
    private String departNameAbbr;
    /**
     *对接企业微信的ID
     */
    @Column(value = "qywx_identifier", jdbcType =Types.VARCHAR)
    private String qywxIdentifier;
    /**
     *手机号
     */
    @Column(value = "mobile", jdbcType =Types.VARCHAR)
    private String mobile;
    /**
     *ID
     */
        @Id
    @Column(value = "id", jdbcType =Types.VARCHAR)
    private String id;
    /**
     *排序
     */
    @Column(value = "depart_order", jdbcType =Types.INTEGER)
    private Integer departOrder;
    /**
     *创建人
     */
    @Column(value = "create_by", jdbcType =Types.VARCHAR)
    private String createBy;
    /**
     *传真
     */
    @Column(value = "fax", jdbcType =Types.VARCHAR)
    private String fax;
    /**
     *父机构ID
     */
    @Column(value = "parent_id", jdbcType =Types.VARCHAR)
    private String parentId;
    /**
     *描述
     */
    @Column(value = "description", jdbcType =Types.VARCHAR)
    private String description;
    /**
     *机构类别 1公司，2组织机构，2岗位
     */
    @Column(value = "org_category", jdbcType =Types.VARCHAR)
    private String orgCategory;
    /**
     *创建日期
     */
    @Column(value = "create_time", jdbcType =Types.TIMESTAMP)
    private Date createTime;
    /**
     *地址
     */
    @Column(value = "address", jdbcType =Types.VARCHAR)
    private String address;
    /**
     *机构/部门名称
     */
    @Column(value = "depart_name", jdbcType =Types.VARCHAR)
    private String departName;
    /**
     *状态（1启用，0不启用）
     */
    @Column(value = "status", jdbcType =Types.VARCHAR)
    private String status;
    /**
     *机构类型 1一级部门 2子部门
     */
    @Column(value = "org_type", jdbcType =Types.VARCHAR)
    private String orgType;
    /**
     *更新人
     */
    @Column(value = "update_by", jdbcType =Types.VARCHAR)
    private String updateBy;
    /**
     *备注
     */
    @Column(value = "memo", jdbcType =Types.VARCHAR)
    private String memo;
    /**
     *英文名
     */
    @Column(value = "depart_name_en", jdbcType =Types.VARCHAR)
    private String departNameEn;
    /**
     *删除状态（0，正常，1已删除）
     */
    @Column(value = "del_flag", jdbcType =Types.VARCHAR)
    private String delFlag;
}
