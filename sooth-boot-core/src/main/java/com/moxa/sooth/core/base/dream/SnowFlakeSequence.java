package com.moxa.sooth.core.base.dream;

import com.moxa.dream.system.table.TableInfo;
import com.moxa.dream.template.sequence.AbstractSequence;
import com.moxa.sooth.core.base.util.SnowFlake;

public class SnowFlakeSequence extends AbstractSequence {
    @Override
    protected Object sequence(TableInfo tableInfo) {
        return SnowFlake.nextId();
    }
}
