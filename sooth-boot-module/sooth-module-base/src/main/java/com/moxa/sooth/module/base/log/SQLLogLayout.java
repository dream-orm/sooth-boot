package com.moxa.sooth.module.base.log;

import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.LayoutBase;
import com.moxa.dream.system.config.Command;
import com.moxa.sooth.module.base.core.entity.LoginUser;
import com.moxa.sooth.module.base.core.util.ClientUtil;
import com.moxa.sooth.module.base.log.model.SQLLogModel;

import java.util.Date;

public class SQLLogLayout extends LayoutBase<ILoggingEvent> {
    public static void main(String[] args) {

    }

    @Override
    public String doLayout(ILoggingEvent iLoggingEvent) {
        LoginUser loginUser = ClientUtil.getLoginUser();
        SQLLogModel sqlLogModel = new SQLLogModel();
        sqlLogModel.setUserId(loginUser.getId());
        sqlLogModel.setUsername(loginUser.getUsername());
        sqlLogModel.setLevel(iLoggingEvent.getLevel().toString());
        sqlLogModel.setSql("select * from dual");
        sqlLogModel.setCommand(Command.QUERY.name());
        sqlLogModel.setUseTime(100);
        sqlLogModel.setMsg("ok");
        sqlLogModel.setDate(new Date());
        return sqlLogModel.toString();
    }
}
