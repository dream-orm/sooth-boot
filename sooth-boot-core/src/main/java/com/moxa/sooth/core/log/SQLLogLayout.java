package com.moxa.sooth.core.log;

import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.LayoutBase;
import com.moxa.dream.system.config.Command;
import com.moxa.sooth.core.base.util.ClientUtil;
import com.moxa.sooth.core.log.model.SQLLogModel;
import com.moxa.sooth.core.user.view.SysUser;

import java.util.Date;

public class SQLLogLayout extends LayoutBase<ILoggingEvent> {
    public static void main(String[] args) {

    }

    @Override
    public String doLayout(ILoggingEvent iLoggingEvent) {
        SysUser loginUser = ClientUtil.getLoginUser();
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
