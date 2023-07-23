package com.moxa.sooth.module.code.gen.util;

import cn.hutool.core.util.ReflectUtil;
import cn.hutool.core.util.StrUtil;
import com.moxa.sooth.module.base.core.config.App;
import com.moxa.sooth.module.base.core.entity.BaseEntity;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.code.fieldtype.service.ISysFieldTypeService;
import com.moxa.sooth.module.code.fieldtype.view.SysFieldTypeLV;
import com.moxa.sooth.module.code.gen.enums.ControlType;
import com.moxa.sooth.module.code.gen.view.SysGenFieldLV;
import com.moxa.sooth.module.code.gen.view.SysGenTableEV;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.*;
import java.util.stream.Collectors;

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

    public static List<SysGenTableEV> getTableList(Connection connection, String table) {
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet resultSet = metaData.getTables(connection.getCatalog(), connection.getSchema(), table, new String[]{"TABLE"});
            List<SysGenTableEV> tableInfoList = new ArrayList<>();
            while (resultSet.next()) {
                String tableName = resultSet.getString("TABLE_NAME");
                String remark = resultSet.getString("REMARKS");
                SysGenTableEV sysGenTableEV = new SysGenTableEV();
                sysGenTableEV.setTableName(tableName);
                sysGenTableEV.setTableComment(remark);
                tableInfoList.add(sysGenTableEV);
            }
            return tableInfoList;
        } catch (Exception e) {
            throw new SoothException(e.getMessage(), e);
        }
    }

    public static List<SysGenFieldLV> listColumn(Connection connection, String table) {
        ISysFieldTypeService fieldTypeService = App.getBean(ISysFieldTypeService.class);
        Set<String> fieldNameSet = Arrays.stream(ReflectUtil.getFieldsDirectly(BaseEntity.class, true)).map(field -> field.getName()).collect(Collectors.toSet());
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet resultSet = metaData.getPrimaryKeys(connection.getCatalog(), connection.getSchema(), table);
            Set<String> keySet = new HashSet<>();
            while (resultSet.next()) {
                String columnName = resultSet.getString("COLUMN_NAME");
                keySet.add(columnName);
            }
            resultSet = metaData.getColumns(connection.getCatalog(), connection.getSchema(), table, null);
            List<SysGenFieldLV> tableFieldList = new ArrayList<>();
            while (resultSet.next()) {
                String columnName = resultSet.getString("COLUMN_NAME");
                String remark = resultSet.getString("REMARKS");
                int dataTypeId = resultSet.getInt("DATA_TYPE");
                DataType dataType = dataTypeMap.get(dataTypeId);
                if (dataType == null) {
                    throw new SoothException("数据库字段类型未找到，类型id：" + dataTypeId);
                }
                String jdbcType = dataType.getJdbcType();
                SysFieldTypeLV sysFieldTypeLV = fieldTypeService.selectById(dataTypeId);
                if (sysFieldTypeLV == null) {
                    throw new SoothException("请先初始化类型映射");
                }
                SysGenFieldLV sysGenFieldLV = new SysGenFieldLV();
                sysGenFieldLV.setPrimaryPk(keySet.contains(columnName));
                sysGenFieldLV.setColumnName(columnName);
                sysGenFieldLV.setAttrName(StrUtil.toCamelCase(columnName));
                sysGenFieldLV.setColumnComment(remark);
                sysGenFieldLV.setColumnType(jdbcType);
                sysGenFieldLV.setAttrType(sysFieldTypeLV.getAttrType());
                if (dataTypeId == Types.BIT || dataTypeId == Types.SMALLINT || dataTypeId == Types.INTEGER || dataTypeId == Types.DOUBLE || dataTypeId == Types.FLOAT || dataTypeId == Types.BIGINT || dataTypeId == Types.DECIMAL || dataTypeId == Types.REAL) {
                    sysGenFieldLV.setControlType(ControlType.NUMBER.getValue());
                } else if (dataTypeId == Types.DATE) {
                    sysGenFieldLV.setControlType(ControlType.DATE.getValue());
                } else {
                    sysGenFieldLV.setControlType(ControlType.INPUT.getValue());
                }
                if (sysGenFieldLV.isPrimaryPk()) {
                    sysGenFieldLV.setShowListType("0");
                    sysGenFieldLV.setShowEditType("0");
                } else if (!fieldNameSet.contains(sysGenFieldLV.getAttrName())) {
                    sysGenFieldLV.setShowListType("1");
                    sysGenFieldLV.setShowEditType("1");
                }
                tableFieldList.add(sysGenFieldLV);
            }
            return tableFieldList;
        } catch (Exception e) {
            throw new SoothException(e.getMessage(), e);
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
