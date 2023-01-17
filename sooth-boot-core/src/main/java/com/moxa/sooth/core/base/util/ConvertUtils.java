package com.moxa.sooth.core.base.util;

import com.moxa.sooth.core.base.constant.CommonConstant;
import lombok.extern.slf4j.Slf4j;


@Slf4j
public class ConvertUtils {
    public static boolean isEmpty(Object object) {
        if (object == null) {
            return (true);
        }
        if ("".equals(object)) {
            return (true);
        }
        if (CommonConstant.STRING_NULL.equals(object)) {
            return (true);
        }
        return (false);
    }

    public static boolean isNotEmpty(Object object) {
        if (object != null && !"".equals(object) && !object.equals(CommonConstant.STRING_NULL)) {
            return (true);
        }
        return (false);
    }


    public static String getString(Object object) {
        if (isEmpty(object)) {
            return "";
        }
        return (object.toString().trim());
    }

    public static String getString(String s, String defval) {
        if (isEmpty(s)) {
            return (defval);
        }
        return (s.trim());
    }

}
