package com.moxa.sooth.module.base.dept.table;

import com.moxa.dream.system.annotation.Column;
import com.moxa.dream.system.annotation.Id;
import com.moxa.dream.system.annotation.Table;
import lombok.Data;

import java.sql.Types;

@Data
@Table("sys_user_dept")
public class SysUserDept {
    /**
     *
     */
    @Id
    @Column(value = "id", jdbcType = Types.BIGINT)
    private Long id;
    /**
     * 部门id
     */
    @Column(value = "dept_id", jdbcType = Types.BIGINT)
    private Long deptId;
    /**
     * 用户id
     */
    @Column(value = "user_id", jdbcType = Types.BIGINT)
    private Long userId;
}
