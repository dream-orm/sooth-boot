package com.moxa.sooth.role.view;

import com.moxa.sooth.core.base.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 角色表
 * </p>
 *
 * @Author scott
 * @since 2018-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysRole extends BaseEntity {

    /**
     * id
     */
    private String id;

    /**
     * 角色名称
     */

    private String roleName;

    /**
     * 角色编码
     */

    private String roleCode;

    /**
     * 描述
     */

    private String description;
}
