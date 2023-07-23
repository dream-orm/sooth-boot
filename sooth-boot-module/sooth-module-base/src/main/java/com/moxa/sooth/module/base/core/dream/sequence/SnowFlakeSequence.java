package com.moxa.sooth.module.base.core.dream.sequence;

import com.moxa.dream.system.table.TableInfo;
import com.moxa.dream.template.sequence.AbstractSequence;
import com.moxa.sooth.module.base.core.exception.SoothException;
import com.moxa.sooth.module.base.core.util.SnowFlake;

public class SnowFlakeSequence extends AbstractSequence {
    @Override
    protected Object sequence(TableInfo tableInfo) {
        Class<?> type = tableInfo.getPrimColumnInfo().getField().getType();
        Long nextId = SnowFlake.nextId();
        if (type == Long.class) {
            return nextId;
        } else if (type == String.class) {
            return Long.toHexString(nextId);
        } else if (type == Integer.class) {
            return nextId.intValue();
        }
        throw new SoothException("不支持的主键类型：" + type.getName());
    }
}
