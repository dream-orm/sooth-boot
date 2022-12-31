package com.moxa.sooth.dept.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
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
@Table("sys_dept")
public class $SysDept {
    /**
     * 更新日期
     */
    @Column(value = "update_time", jdbcType = Types.TIMESTAMP)
    private Date updateTime;
    /**
     * 缩写
     */
    @Column(value = "depart_name_abbr", jdbcType = Types.VARCHAR)
    private String departNameAbbr;
    /**
     * ID
     */
    @Id
    @Column(value = "id", jdbcType = Types.VARCHAR)
    private String id;
    /**
     * 排序
     */
    @Column(value = "dept_order", jdbcType = Types.INTEGER)
    private Integer deptOrder;
    /**
     * 创建人
     */
    @Column(value = "create_by", jdbcType = Types.VARCHAR)
    private String createBy;
    /**
     * 父机构ID
     */
    @Column(value = "parent_id", jdbcType = Types.VARCHAR)
    private String parentId;
    /**
     * 描述
     */
    @Column(value = "description", jdbcType = Types.VARCHAR)
    private String description;
    /**
     * 创建日期
     */
    @Column(value = "create_time", jdbcType = Types.TIMESTAMP)
    private Date createTime;
    /**
     * 机构/部门名称
     */
    @Column(value = "dept_name", jdbcType = Types.VARCHAR)
    private String deptName;
    /**
     * 状态（1启用，0不启用）
     */
    @Column(value = "status", jdbcType = Types.VARCHAR)
    private String status;
    /**
     * 更新人
     */
    @Column(value = "update_by", jdbcType = Types.VARCHAR)
    private String updateBy;
    /**
     * 删除状态（0，正常，1已删除）
     */
    @Column(value = "del_flag", jdbcType = Types.VARCHAR)
    private String delFlag;
}
