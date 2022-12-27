package com.moxa.sooth.modules.system.vo;

import com.moxa.sooth.modules.system.entity.SysDictItem;
import lombok.Data;

import java.util.List;

/**
 * @Description: 系统字典分页
 * @author: jeecg-boot
 */
@Data
public class SysDictPage {

    /**
     * 主键
     */
    private String id;
    /**
     * 字典名称
     */

    private String dictName;

    /**
     * 字典编码
     */

    private String dictCode;
    /**
     * 删除状态
     */
    private Integer delFlag;
    /**
     * 描述
     */

    private String description;


    private List<SysDictItem> sysDictItemList;

}
