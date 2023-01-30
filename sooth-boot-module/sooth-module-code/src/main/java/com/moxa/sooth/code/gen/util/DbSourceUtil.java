package com.moxa.sooth.code.gen.util;

import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.code.fieldtype.service.IFieldTypeService;
import com.moxa.sooth.code.fieldtype.view.FieldType;
import com.moxa.sooth.code.gen.view.GenTable;
import com.moxa.sooth.code.gen.view.GenTableField;
import com.moxa.sooth.core.base.config.App;
import com.moxa.sooth.core.base.exception.SoothBootException;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.*;

public class DbSourceUtil {
    public static Map<Integer, DataType> dataTypeMap = new HashMap<>();

    static {
        dataTypeMap.put(Types.BIT, new DataType("Types.BIT", "Byte"));
        dataTypeMap.put(Types.TINYINT, new DataType("Types.TINYINT", "Byte"));
        dataTypeMap.put(Types.SMALLINT, new DataType("Types.SMALLINT", "Short"));
        dataTypeMap.put(Types.INTEGER, new DataType("Types.INTEGER", "Integer"));
        dataTypeMap.put(Types.BIGINT, new DataType("Types.BIGINT", "Long"));
        dataTypeMap.put(Types.FLOAT, new DataType("Types.FLOAT", "Float"));
        dataTypeMap.put(Types.REAL, new DataType("Types.REAL", "Float"));
        dataTypeMap.put(Types.DOUBLE, new DataType("Types.DOUBLE", "Double"));
        dataTypeMap.put(Types.NUMERIC, new DataType("Types.NUMERIC", "java.math.BigDecimal"));
        dataTypeMap.put(Types.DECIMAL, new DataType("Types.DECIMAL", "java.math.BigDecimal"));
        dataTypeMap.put(Types.CHAR, new DataType("Types.CHAR", "String"));
        dataTypeMap.put(Types.VARCHAR, new DataType("Types.VARCHAR", "String"));
        dataTypeMap.put(Types.LONGVARCHAR, new DataType("Types.LONGVARCHAR", "String"));
        dataTypeMap.put(Types.DATE, new DataType("Types.DATE", "java.util.Date"));
        dataTypeMap.put(Types.TIME, new DataType("Types.TIME", "java.sql.Time"));
        dataTypeMap.put(Types.TIMESTAMP, new DataType("Types.TIMESTAMP", "java.util.Date"));
        dataTypeMap.put(Types.BINARY, new DataType("Types.BINARY", "Byte[]"));
        dataTypeMap.put(Types.VARBINARY, new DataType("Types.VARBINARY", "Byte[]"));
        dataTypeMap.put(Types.LONGVARBINARY, new DataType("Types.LONGVARBINARY", "Byte[]"));
        dataTypeMap.put(Types.NULL, new DataType("Types.NULL", "Object"));
        dataTypeMap.put(Types.OTHER, new DataType("Types.OTHER", "Object"));
        dataTypeMap.put(Types.BLOB, new DataType("Types.BLOB", "java.io.InputStream"));
        dataTypeMap.put(Types.CLOB, new DataType("Types.CLOB", "String"));
        dataTypeMap.put(Types.BOOLEAN, new DataType("Types.BOOLEAN", "Boolean"));
        dataTypeMap.put(Types.NCHAR, new DataType("Types.NCHAR", "String"));
        dataTypeMap.put(Types.NVARCHAR, new DataType("Types.NVARCHAR", "String"));
        dataTypeMap.put(Types.LONGNVARCHAR, new DataType("Types.LONGNVARCHAR", "String"));
        dataTypeMap.put(Types.NCLOB, new DataType("Types.NCLOB", "String"));
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
                int columnType = resultSet.getInt("DATA_TYPE");
                String typeName = resultSet.getString("TYPE_NAME");
                FieldType fieldType = fieldTypeService.selectById(columnType);
                if (fieldType == null) {
                    throw new SoothBootException("请现在类型映射维护字段类型" + typeName);
                }
                GenTableField genTableField = new GenTableField();
                genTableField.setPrimaryPk(keySet.contains(columnName));
                genTableField.setColumnName(columnName);
                genTableField.setAttrName(StrUtil.toCamelCase(columnName));
                genTableField.setColumnComment(remark);
                genTableField.setColumnType(columnType);
                genTableField.setTypeName(typeName);
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
