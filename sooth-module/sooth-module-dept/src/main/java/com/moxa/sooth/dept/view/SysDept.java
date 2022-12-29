package com.moxa.sooth.dept.view;

import com.baomidou.mybatisplus.annotation.TableField;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.resulthandler.Tree;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.dept.table.$SysDept;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * <p>
 * 部门表
 * <p>
 *
 * @Author Steve
 * @Since 2019-01-22
 */
@Data
@View($SysDept.class)
public class SysDept extends BaseEntity implements Tree {
    private List<SysDept>children=new ArrayList<>();
    /**
     * ID
     */
    private String id;
    /**
     * 父机构ID
     */
    private String parentId;
    /**
     * 机构/部门名称
     */

    private String deptName;
    /**
     * 排序
     */

    private Integer deptOrder;
    /**
     * 描述
     */

    private String description;
    /**
     * 状态（1启用，0不启用）
     */
    @Dict(dicCode = "depart_status")
    @Extract(DictExtractor.class)
    private String status;
    /**
     * 删除状态（0，正常，1已删除）
     */
    @Dict(dicCode = "del_flag")
    @Extract(DictExtractor.class)
    private String delFlag;

    @Override
    public String getTreeId() {
        return id;
    }

    @Override
    public List<?extends Tree> getChildren() {
        return children;
    }
}
