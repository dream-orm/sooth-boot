package com.moxa.sooth.position.table;

import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import com.moxa.dream.system.annotation.Column;
import lombok.Data;

import java.sql.Types;
import java.util.Date;

/**
 * 【请填写功能名称】  sys_position
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_position")
public class $SysPosition{
    /**
     *组织机构编码
     */
    @Column(value = "sys_org_code", jdbcType =Types.VARCHAR)
    private String sysOrgCode;
    /**
     *公司id
     */
    @Column(value = "company_id", jdbcType =Types.VARCHAR)
    private String companyId;
    /**
     *
     */
        @Id
    @Column(value = "id", jdbcType =Types.VARCHAR)
    private String id;
    /**
     *创建人
     */
    @Column(value = "create_by", jdbcType =Types.VARCHAR)
    private String createBy;
    /**
     *职务编码
     */
    @Column(value = "code", jdbcType =Types.VARCHAR)
    private String code;
    /**
     *创建时间
     */
    @Column(value = "create_time", jdbcType =Types.TIMESTAMP)
    private Date createTime;
    /**
     *修改人
     */
    @Column(value = "update_by", jdbcType =Types.VARCHAR)
    private String updateBy;
    /**
     *职务名称
     */
    @Column(value = "name", jdbcType =Types.VARCHAR)
    private String name;
    /**
     *修改时间
     */
    @Column(value = "update_time", jdbcType =Types.TIMESTAMP)
    private Date updateTime;
    /**
     *职级
     */
    @Column(value = "post_rank", jdbcType =Types.VARCHAR)
    private String postRank;
}
