package com.moxa.sooth.core.log.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Calendar;
import java.util.Date;

@Setter
@Getter
public class SQLLogModel {
    private long userId;
    private String username;
    private String sql;
    private String command;
    private int useTime;
    private Date date;
    private String msg;
    private String level;

    public String getDate() {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(Calendar.YEAR) + "-" + wrap(calendar.get(Calendar.MONTH) + 1) + "-" + wrap(calendar.get(Calendar.DATE)) + " "
                + wrap(calendar.get(Calendar.HOUR_OF_DAY)) + ":" + wrap(calendar.get(Calendar.MINUTE)) + ":" + wrap(calendar.get(Calendar.SECOND));
    }

    private String wrap(Integer value) {
        return value < 10 ? "0" + value : String.valueOf(value);
    }

    @Override
    public String toString() {
        return "SQLLogModel{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", sql='" + sql + '\'' +
                ", command='" + command + '\'' +
                ", useTime=" + useTime +
                ", date=" + getDate() +
                ", msg='" + msg + '\'' +
                ", level='" + level + '\'' +
                '}';
    }
}
