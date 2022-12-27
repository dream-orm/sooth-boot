package com.moxa.sooth.core.base.common.system.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @Description: 字典类
 * @author: jeecg-boot
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@JsonIgnoreProperties(ignoreUnknown = true)
public class DictModel implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 字典value
     */
    private String value;
    /**
     * 字典文本
     */
    private String text;

    public DictModel() {
    }

    public DictModel(String value, String text) {
        this.value = value;
        this.text = text;
    }

    /**
     * 特殊用途： JgEditableTable
     *
     * @return
     */
    public String getTitle() {
        return this.text;
    }

    /**
     * 特殊用途： vue3 Select组件
     */
    public String getLabel() {
        return this.text;
    }

}
