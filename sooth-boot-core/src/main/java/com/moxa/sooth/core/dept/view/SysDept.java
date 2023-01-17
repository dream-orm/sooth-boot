package com.moxa.sooth.core.dept.view;

import com.moxa.dream.system.annotation.View;
import com.moxa.dream.template.resulthandler.Tree;
import com.moxa.sooth.core.base.annotation.Dict;
import com.moxa.sooth.core.base.dream.annotation.Unique;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.core.dept.table.$SysDept;
import lombok.Data;

import java.util.List;

@Data
@View($SysDept.class)
public class SysDept extends BaseEntity implements Tree<Long> {
    private List<SysDept> children;
    /**
     * ID
     */
    private Long deptId;
    /**
     * 父机构ID
     */
    private Long parentId;
    /**
     * 机构/部门名称
     */

    private String deptName;

    @Unique(msg = "部门编码已存在")
    private String deptCode;
    /**
     * 排序
     */

    private Double orderNo;
    /**
     * 描述
     */

    private String description;
    @Dict(code = "status")

    private Integer status;
    /**
     * 删除状态（0，正常，1已删除）
     */
    private Integer delFlag;

    @Override
    public Long getTreeId() {
        return deptId;
    }

    @Override
    public List<? extends Tree> getChildren() {
        return children;
    }

    @Override
    public void setChildren(List<? extends Tree> children) {
        this.children = (List<SysDept>) children;
    }
}
