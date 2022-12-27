package com.moxa.sooth.position.view;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.moxa.dream.system.annotation.Extract;
import com.moxa.dream.system.annotation.View;
import com.moxa.sooth.core.base.common.aspect.annotation.Dict;
import com.moxa.sooth.core.base.dream.DictExtractor;
import com.moxa.sooth.core.base.entity.BaseEntity;
import com.moxa.sooth.position.table.$SysPosition;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 职务表
 * @Author: jeecg-boot
 * @Date: 2019-09-19
 * @Version: V1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@View($SysPosition.class)
public class SysPosition extends BaseEntity {

    /**
     * id
     */
    @TableId(type = IdType.ASSIGN_ID)

    private String id;
    /**
     * 职务编码
     */


    private String code;
    /**
     * 职务名称
     */


    private String name;
    /**
     * 职级
     */


    @Dict(dicCode = "position_rank")
    @Extract(DictExtractor.class)
    private String postRank;
    /**
     * 公司id
     */

    private String companyId;

    /**
     * 组织机构编码
     */

    private String sysOrgCode;
}
