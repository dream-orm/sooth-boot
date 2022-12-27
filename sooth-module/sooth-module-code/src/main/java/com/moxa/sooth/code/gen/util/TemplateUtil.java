package com.moxa.sooth.code.gen.util;

import cn.hutool.core.io.IoUtil;
import com.moxa.sooth.core.base.common.exception.SoothBootException;
import freemarker.template.Template;

import java.io.StringReader;
import java.io.StringWriter;
import java.util.Map;

/**
 * 模板工具类
 */
public class TemplateUtil {
    /**
     * 获取模板渲染后的内容
     *
     * @param content   模板内容
     * @param dataModel 数据模型
     */
    public static String getContent(String content, Map<String, Object> dataModel) {
        if (dataModel.isEmpty()) {
            return content;
        }

        StringReader reader = new StringReader(content);
        StringWriter sw = new StringWriter();
        try {
            // 渲染模板
            String templateName = dataModel.get("templateName").toString();
            Template template = new Template(templateName, reader, null, "utf-8");
            template.process(dataModel, sw);
            return sw.toString();
        } catch (Exception e) {
            throw new SoothBootException("渲染模板失败，请检查模板语法", e);
        } finally {
            IoUtil.close(reader);
            IoUtil.close(sw);
        }
    }
}
