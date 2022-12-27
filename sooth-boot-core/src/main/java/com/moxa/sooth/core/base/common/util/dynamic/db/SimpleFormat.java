//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.moxa.sooth.core.base.common.util.dynamic.db;

import java.text.*;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class SimpleFormat {
    public static String underlineToHump(String para) {
        StringBuilder var1 = new StringBuilder();
        String[] var2 = para.split("_");
        String[] var3 = var2;
        int var4 = var2.length;

        for (int var5 = 0; var5 < var4; ++var5) {
            String var6 = var3[var5];
            if (!para.contains("_")) {
                var1.append(var6);
            } else if (var1.length() == 0) {
                var1.append(var6.toLowerCase());
            } else {
                var1.append(var6.substring(0, 1).toUpperCase());
                var1.append(var6.substring(1).toLowerCase());
            }
        }

        return var1.toString();
    }

    public static String humpToUnderline(String para) {
        StringBuilder var1 = new StringBuilder(para);
        int var2 = 0;
        if (!para.contains("_")) {
            for (int var3 = 0; var3 < para.length(); ++var3) {
                if (Character.isUpperCase(para.charAt(var3))) {
                    var1.insert(var3 + var2, "_");
                    ++var2;
                }
            }
        }

        return var1.toString().toLowerCase().startsWith("_") ? var1.toString().toLowerCase().substring(1) : var1.toString().toLowerCase();
    }

    public static String humpToShortbar(String para) {
        StringBuilder var1 = new StringBuilder(para);
        int var2 = 0;
        if (!para.contains("-")) {
            for (int var3 = 0; var3 < para.length(); ++var3) {
                if (Character.isUpperCase(para.charAt(var3))) {
                    var1.insert(var3 + var2, "-");
                    ++var2;
                }
            }
        }

        return var1.toString().toLowerCase().startsWith("-") ? var1.toString().toLowerCase().substring(1) : var1.toString().toLowerCase();
    }

    public static void main(String[] args) {
        System.out.println(humpToShortbar("jeecgDemo"));
    }

    public String number(Object obj) {
        obj = obj != null && obj.toString().length() != 0 ? obj : 0;
        return obj.toString().equalsIgnoreCase("NaN") ? "NaN" : (new DecimalFormat("0.00")).format(Double.parseDouble(obj.toString()));
    }

    public String number(Object obj, String pattern) {
        obj = obj != null && obj.toString().length() != 0 ? obj : 0;
        return obj.toString().equalsIgnoreCase("NaN") ? "NaN" : (new DecimalFormat(pattern)).format(Double.parseDouble(obj.toString()));
    }

    public String round(Object obj) {
        obj = obj != null && obj.toString().length() != 0 ? obj : 0;
        return obj.toString().equalsIgnoreCase("NaN") ? "NaN" : (new DecimalFormat("0")).format(Double.parseDouble(obj.toString()));
    }

    public String currency(Object obj) {
        obj = obj != null && obj.toString().length() != 0 ? obj : 0;
        return NumberFormat.getCurrencyInstance(Locale.CHINA).format(obj);
    }

    public String timestampToString(Object obj, String pattern) {
        if (obj == null) {
            return "";
        } else {
            SimpleDateFormat var3 = new SimpleDateFormat("dd-MM月 -yy");
            SimpleDateFormat var4 = new SimpleDateFormat(pattern);
            Date var5 = null;

            try {
                var5 = var3.parse(obj.toString());
            } catch (ParseException var7) {
                var7.printStackTrace();
                return "error";
            }

            return var4.format(var5);
        }
    }

    public String percent(Object obj) {
        obj = obj != null && obj.toString().length() != 0 ? obj : 0;
        return obj.toString().equalsIgnoreCase("NaN") ? "" : NumberFormat.getPercentInstance(Locale.CHINA).format(obj);
    }

    public String date(Object obj, String pattern) {
        return obj == null ? "" : (new SimpleDateFormat(pattern)).format(obj);
    }

    public String date(Object obj) {
        return obj == null ? "" : DateFormat.getDateInstance(1, Locale.CHINA).format(obj);
    }

    public String time(Object obj) {
        return obj == null ? "" : DateFormat.getTimeInstance(3, Locale.CHINA).format(obj);
    }

    public String datetime(Object obj) {
        return obj == null ? "" : DateFormat.getDateTimeInstance(1, 3, Locale.CHINA).format(obj);
    }

    public String getInStrs(List<String> params) {
        StringBuffer var2 = new StringBuffer();
        Iterator var3 = params.iterator();

        while (var3.hasNext()) {
            String var4 = (String) var3.next();
            var2.append("'" + var4 + "',");
        }

        String var5 = var2.toString();
        if ("".equals(var5) && !var5.endsWith(",")) {
            return null;
        } else {
            var5 = var5.substring(0, var5.length() - 1);
            return var5;
        }
    }
}
