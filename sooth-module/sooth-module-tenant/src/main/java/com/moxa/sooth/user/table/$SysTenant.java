package com.moxa.sooth.user.table;

import java.util.Date;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import com.moxa.dream.system.annotation.Column;
import lombok.Data;

import java.sql.Types;
/**
 * 多租户信息  sys_tenant
 *
 * @author moxa
 * @date 2022-11-13
 */
@Data
@Table("sys_tenant")
public class $SysTenant{
    /**
     *开始时间
     */
    @Column(value = "begin_date", jdbcType =Types.TIMESTAMP)
    private Date beginDate;
    /**
     *租户编码
     */
        @Id
    @Column(value = "id", jdbcType =Types.INTEGER)
    private Integer id;
    /**
     *结束时间
     */
    @Column(value = "end_date", jdbcType =Types.TIMESTAMP)
    private Date endDate;
    /**
     *租户名称
     */
    @Column(value = "name", jdbcType =Types.VARCHAR)
    private String name;
    /**
     *状态 1正常 0冻结
     */
    @Column(value = "status", jdbcType =Types.INTEGER)
    private Integer status;
    /**
     *创建时间
     */
    @Column(value = "create_time", jdbcType =Types.TIMESTAMP)
    private Date createTime;
    /**
     *创建人
     */
    @Column(value = "create_by", jdbcType =Types.VARCHAR)
    private String createBy;
}
