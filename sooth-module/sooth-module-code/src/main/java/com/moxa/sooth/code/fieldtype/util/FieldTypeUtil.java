package com.moxa.sooth.code.fieldtype.util;

import java.sql.Types;
import java.util.HashMap;
import java.util.Map;

public class FieldTypeUtil {

    public static Map<Integer, String> getDataTypeMap() {
        Map<Integer, String> dataTypeMap = new HashMap<>();
        dataTypeMap.put(Types.BIT, "Boolean");
        dataTypeMap.put(Types.TINYINT, "Byte");
        dataTypeMap.put(Types.SMALLINT, "Short");
        dataTypeMap.put(Types.INTEGER, "Integer");
        dataTypeMap.put(Types.BIGINT, "Long");
        dataTypeMap.put(Types.FLOAT, "Float");
        dataTypeMap.put(Types.REAL, "Float");
        dataTypeMap.put(Types.DOUBLE, "Double");
        dataTypeMap.put(Types.NUMERIC, "java.math.BigDecimal");
        dataTypeMap.put(Types.DECIMAL, "java.math.BigDecimal");
        dataTypeMap.put(Types.CHAR, "String");
        dataTypeMap.put(Types.VARCHAR, "String");
        dataTypeMap.put(Types.LONGVARCHAR, "String");
        dataTypeMap.put(Types.DATE, "java.util.Date");
        dataTypeMap.put(Types.TIME, "java.sql.Time");
        dataTypeMap.put(Types.TIMESTAMP, "java.util.Date");
        dataTypeMap.put(Types.BINARY, "Byte[]");
        dataTypeMap.put(Types.VARBINARY, "Byte[]");
        dataTypeMap.put(Types.LONGVARBINARY, "Byte[]");
        dataTypeMap.put(Types.NULL, "Object");
        dataTypeMap.put(Types.OTHER, "Object");
        dataTypeMap.put(Types.BLOB, "java.io.InputStream");
        dataTypeMap.put(Types.CLOB, "String");
        dataTypeMap.put(Types.BOOLEAN, "Boolean");
        dataTypeMap.put(Types.NCHAR, "String");
        dataTypeMap.put(Types.NVARCHAR, "String");
        dataTypeMap.put(Types.LONGNVARCHAR, "String");
        dataTypeMap.put(Types.NCLOB, "String");
        return dataTypeMap;
    }
}
