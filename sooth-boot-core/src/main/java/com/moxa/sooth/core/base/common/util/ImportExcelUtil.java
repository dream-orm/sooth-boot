package com.moxa.sooth.core.base.common.util;

import com.baomidou.mybatisplus.extension.service.IService;
import com.moxa.sooth.core.base.common.constant.CommonConstant;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * 导出返回信息
 *
 * @author: jeecg-boot
 */
@Slf4j
public class ImportExcelUtil {


    public static List<String> importDateSave(List<?> list, Class serviceClass, List<String> errorMessage, String errorFlag) {
        IService bean = (IService) SpringContextUtils.getBean(serviceClass);
        for (int i = 0; i < list.size(); i++) {
            try {
                boolean save = bean.save(list.get(i));
                if (!save) {
                    throw new Exception(errorFlag);
                }
            } catch (Exception e) {
                String message = e.getMessage().toLowerCase();
                int lineNumber = i + 1;
                // 通过索引名判断出错信息
                if (message.contains(CommonConstant.SQL_INDEX_UNIQ_SYS_ROLE_CODE)) {
                    errorMessage.add("第 " + lineNumber + " 行：角色编码已经存在，忽略导入。");
                } else if (message.contains(CommonConstant.SQL_INDEX_UNIQ_JOB_CLASS_NAME)) {
                    errorMessage.add("第 " + lineNumber + " 行：任务类名已经存在，忽略导入。");
                } else if (message.contains(CommonConstant.SQL_INDEX_UNIQ_CODE)) {
                    errorMessage.add("第 " + lineNumber + " 行：职务编码已经存在，忽略导入。");
                } else if (message.contains(CommonConstant.SQL_INDEX_UNIQ_DEPART_ORG_CODE)) {
                    errorMessage.add("第 " + lineNumber + " 行：部门编码已经存在，忽略导入。");
                } else {
                    errorMessage.add("第 " + lineNumber + " 行：未知错误，忽略导入");
                    log.error(e.getMessage(), e);
                }
            }
        }
        return errorMessage;
    }

    public static List<String> importDateSaveOne(Object obj, Class serviceClass, List<String> errorMessage, int i, String errorFlag) {
        IService bean = (IService) SpringContextUtils.getBean(serviceClass);
        try {
            boolean save = bean.save(obj);
            if (!save) {
                throw new Exception(errorFlag);
            }
        } catch (Exception e) {
            String message = e.getMessage().toLowerCase();
            int lineNumber = i + 1;
            // 通过索引名判断出错信息
            if (message.contains(CommonConstant.SQL_INDEX_UNIQ_SYS_ROLE_CODE)) {
                errorMessage.add("第 " + lineNumber + " 行：角色编码已经存在，忽略导入。");
            } else if (message.contains(CommonConstant.SQL_INDEX_UNIQ_JOB_CLASS_NAME)) {
                errorMessage.add("第 " + lineNumber + " 行：任务类名已经存在，忽略导入。");
            } else if (message.contains(CommonConstant.SQL_INDEX_UNIQ_CODE)) {
                errorMessage.add("第 " + lineNumber + " 行：职务编码已经存在，忽略导入。");
            } else if (message.contains(CommonConstant.SQL_INDEX_UNIQ_DEPART_ORG_CODE)) {
                errorMessage.add("第 " + lineNumber + " 行：部门编码已经存在，忽略导入。");
            } else {
                errorMessage.add("第 " + lineNumber + " 行：未知错误，忽略导入");
                log.error(e.getMessage(), e);
            }
        }
        return errorMessage;
    }
}
