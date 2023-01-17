package com.moxa.sooth.core.base.dream.vaalidate;

import com.moxa.dream.system.config.Command;
import com.moxa.dream.system.config.Configuration;
import com.moxa.dream.system.config.MethodInfo;
import com.moxa.dream.system.core.session.Session;
import com.moxa.dream.system.table.ColumnInfo;
import com.moxa.dream.system.table.TableInfo;
import com.moxa.dream.system.table.factory.TableFactory;
import com.moxa.dream.system.util.SystemUtil;
import com.moxa.dream.template.validate.ValidateDreamRunTimeException;
import com.moxa.dream.template.validate.Validator;
import com.moxa.dream.util.common.NonCollection;
import com.moxa.dream.util.common.ObjectMap;
import com.moxa.sooth.core.base.config.App;

import java.lang.reflect.Field;
import java.util.Map;

public class UniqueValidator implements Validator<Object> {
    private MethodInfo methodInfo;
    private Session session;

    @Override
    public boolean isValid(Configuration configuration, Class type, Field field, Command command) {
        if (command == Command.INSERT) {
            TableFactory tableFactory = configuration.getTableFactory();
            String tableName = SystemUtil.getTableName(type);
            String fieldName = field.getName();
            TableInfo tableInfo = tableFactory.getTableInfo(tableName);
            ColumnInfo columnInfo = tableInfo.getColumnInfo(fieldName);
            String column = columnInfo.getColumn();
            methodInfo = new MethodInfo();
            methodInfo.setConfiguration(configuration);
            methodInfo.setSql("select 1 from " + tableName + " where " + column + "=@$(v) limit 1");
            methodInfo.setRowType(NonCollection.class);
            methodInfo.setColType(Integer.class);
            session = App.getBean(Session.class);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public void validate(Object value, Map<String, Object> paramMap) {
        Object result = session.execute(methodInfo, new ObjectMap(value));
        if (result != null) {
            throw new ValidateDreamRunTimeException((String) paramMap.get("msg"));
        }
    }
}
