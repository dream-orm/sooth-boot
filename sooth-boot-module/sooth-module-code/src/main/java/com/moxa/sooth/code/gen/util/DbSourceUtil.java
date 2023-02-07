package com.moxa.sooth.code.gen.util;

import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.code.fieldtype.service.IFieldTypeService;
import com.moxa.sooth.code.fieldtype.view.FieldType;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.core.base.config.App;
import com.moxa.sooth.core.base.exception.SoothBootException;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.*;

public class DbSourceUtil {
    public static Map<Integer, DataType> dataTypeMap = new HashMap<>();

    static {
        dataTypeMap.put(Types.BIT, new DataType("BIT", "Byte"));
        dataTypeMap.put(Types.TINYINT, new DataType("TINYINT", "Byte"));
        dataTypeMap.put(Types.SMALLINT, new DataType("SMALLINT", "Short"));
        dataTypeMap.put(Types.INTEGER, new DataType("INTEGER", "Integer"));
        dataTypeMap.put(Types.BIGINT, new DataType("BIGINT", "Long"));
        dataTypeMap.put(Types.FLOAT, new DataType("FLOAT", "Float"));
        dataTypeMap.put(Types.REAL, new DataType("REAL", "Float"));
        dataTypeMap.put(Types.DOUBLE, new DataType("DOUBLE", "Double"));
        dataTypeMap.put(Types.NUMERIC, new DataType("NUMERIC", "java.math.BigDecimal"));
        dataTypeMap.put(Types.DECIMAL, new DataType("DECIMAL", "java.math.BigDecimal"));
        dataTypeMap.put(Types.CHAR, new DataType("CHAR", "String"));
        dataTypeMap.put(Types.VARCHAR, new DataType("VARCHAR", "String"));
        dataTypeMap.put(Types.LONGVARCHAR, new DataType("LONGVARCHAR", "String"));
        dataTypeMap.put(Types.DATE, new DataType("DATE", "java.util.Date"));
        dataTypeMap.put(Types.TIME, new DataType("TIME", "java.sql.Time"));
        dataTypeMap.put(Types.TIMESTAMP, new DataType("TIMESTAMP", "java.util.Date"));
        dataTypeMap.put(Types.BINARY, new DataType("BINARY", "Byte[]"));
        dataTypeMap.put(Types.VARBINARY, new DataType("VARBINARY", "Byte[]"));
        dataTypeMap.put(Types.LONGVARBINARY, new DataType("LONGVARBINARY", "Byte[]"));
        dataTypeMap.put(Types.NULL, new DataType("NULL", "Object"));
        dataTypeMap.put(Types.OTHER, new DataType("OTHER", "Object"));
        dataTypeMap.put(Types.BLOB, new DataType("BLOB", "java.io.InputStream"));
        dataTypeMap.put(Types.CLOB, new DataType("CLOB", "String"));
        dataTypeMap.put(Types.BOOLEAN, new DataType("BOOLEAN", "Boolean"));
        dataTypeMap.put(Types.NCHAR, new DataType("NCHAR", "String"));
        dataTypeMap.put(Types.NVARCHAR, new DataType("NVARCHAR", "String"));
        dataTypeMap.put(Types.LONGNVARCHAR, new DataType("LONGNVARCHAR", "String"));
        dataTypeMap.put(Types.NCLOB, new DataType("NCLOB", "String"));
    }

    public static List<GenTable> getTableList(Connection connection, String table) {
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet resultSet = metaData.getTables(connection.getCatalog(), connection.getSchema(), table, new String[]{"TABLE"});
            List<GenTable> tableInfoList = new ArrayList<>();
            while (resultSet.next()) {
                String tableName = resultSet.getString("TABLE_NAME");
                String remark = resultSet.getString("REMARKS");
                GenTable genTable = new GenTable();
                genTable.setTableName(tableName);
                genTable.setTableComment(remark);
                tableInfoList.add(genTable);
            }
            return tableInfoList;
        } catch (Exception e) {
            throw new SoothBootException(e.getMessage(), e);
        }
    }

    public static List<GenTableField> listColumn(Connection connection, String table) {
        IFieldTypeService fieldTypeService = App.getBean(IFieldTypeService.class);
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet resultSet = metaData.getPrimaryKeys(connection.getCatalog(), connection.getSchema(), table);
            Set<String> keySet = new HashSet<>();
            while (resultSet.next()) {
                String columnName = resultSet.getString("COLUMN_NAME");
                keySet.add(columnName);
            }
            resultSet = metaData.getColumns(connection.getCatalog(), connection.getSchema(), table, null);
            List<GenTableField> tableFieldList = new ArrayList<>();
            while (resultSet.next()) {
                String columnName = resultSet.getString("COLUMN_NAME");
                String remark = resultSet.getString("REMARKS");
                int dataTypeId = resultSet.getInt("DATA_TYPE");
                DataType dataType = dataTypeMap.get(dataTypeId);
                if (dataType == null) {
                    throw new SoothBootException("数据库字段类型未找到，类型id：" + dataTypeId);
                }
                String jdbcType = dataType.getJdbcType();
                FieldType fieldType = fieldTypeService.selectById(dataTypeId);
                if (fieldType == null) {
                    throw new SoothBootException("请先初始化类型映射");
                }
                GenTableField genTableField = new GenTableField();
                genTableField.setPrimaryPk(keySet.contains(columnName));
                genTableField.setColumnName(columnName);
                genTableField.setAttrName(StrUtil.toCamelCase(columnName));
                genTableField.setColumnComment(remark);
                genTableField.setColumnType(jdbcType);
                genTableField.setAttrType(fieldType.getAttrType());
                tableFieldList.add(genTableField);
            }
            return tableFieldList;
        } catch (Exception e) {
            throw new SoothBootException(e.getMessage(), e);
        }
    }

    public static class DataType {
        private String jdbcType;
        private String javaType;

        public DataType(String jdbcType, String javaType) {
            this.jdbcType = jdbcType;
            this.javaType = javaType;
        }

        public String getJdbcType() {
            return jdbcType;
        }

        public String getJavaType() {
            return javaType;
        }

    }
}
