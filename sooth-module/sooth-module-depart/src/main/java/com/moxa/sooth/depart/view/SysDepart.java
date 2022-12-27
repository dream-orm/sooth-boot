package com.moxa.sooth.depart.view;

import com.baomidou.mybatisplus.annotation.TableField;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.depart.table.$SysDepart;
import lombok.Data;

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
@View($SysDepart.class)
public class SysDepart extends BaseEntity {
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

    private String departName;
    /**
     * 英文名
     */

    private String departNameEn;
    /**
     * 缩写
     */
    private String departNameAbbr;
    /**
     * 排序
     */

    private Integer departOrder;
    /**
     * 描述
     */

    private String description;
    /**
     * 机构类别 1=公司，2=组织机构，3=岗位
     */

    private String orgCategory;
    /**
     * 机构类型
     */
    private String orgType;
    /**
     * 机构编码
     */

    private String orgCode;
    /**
     * 手机号
     */

    private String mobile;
    /**
     * 传真
     */

    private String fax;
    /**
     * 地址
     */

    private String address;
    /**
     * 备注
     */

    private String memo;
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
    /**
     * 对接企业微信的ID
     */
    private String qywxIdentifier;
    /**
     * 部门负责人的ids
     */
    @TableField(exist = false)
    private String directorUserIds;
    /**
     * 旧的部门负责人的ids(用于比较删除和新增)
     */
    @TableField(exist = false)
    private String oldDirectorUserIds;

    /**
     * 重写equals方法
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        if (!super.equals(o)) {
            return false;
        }
        SysDepart depart = (SysDepart) o;
        return Objects.equals(id, depart.id) &&
                Objects.equals(parentId, depart.parentId) &&
                Objects.equals(departName, depart.departName) &&
                Objects.equals(departNameEn, depart.departNameEn) &&
                Objects.equals(departNameAbbr, depart.departNameAbbr) &&
                Objects.equals(departOrder, depart.departOrder) &&
                Objects.equals(description, depart.description) &&
                Objects.equals(orgCategory, depart.orgCategory) &&
                Objects.equals(orgType, depart.orgType) &&
                Objects.equals(orgCode, depart.orgCode) &&
                Objects.equals(mobile, depart.mobile) &&
                Objects.equals(fax, depart.fax) &&
                Objects.equals(address, depart.address) &&
                Objects.equals(memo, depart.memo) &&
                Objects.equals(status, depart.status) &&
                Objects.equals(delFlag, depart.delFlag) &&
                Objects.equals(createBy, depart.createBy) &&
                Objects.equals(createTime, depart.createTime) &&
                Objects.equals(updateBy, depart.updateBy) &&
                Objects.equals(updateTime, depart.updateTime);
    }

    /**
     * 重写hashCode方法
     */
    @Override
    public int hashCode() {

        return Objects.hash(super.hashCode(), id, parentId, departName,
                departNameEn, departNameAbbr, departOrder, description, orgCategory,
                orgType, orgCode, mobile, fax, address, memo, status,
                delFlag, createBy, createTime, updateBy, updateTime);
    }
}
