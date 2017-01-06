package com.kgalligan.partyclicker.data;
import java.text.DateFormat;
import java.util.Date;

import co.touchlab.squeaky.field.DataType;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;

/**
 * Created by kgalligan on 1/5/17.
 */
@DatabaseTable
public class Person
{
    private static final DateFormat standardTimeFormat = DateFormat.getTimeInstance(DateFormat.MEDIUM);

    @DatabaseField(generatedId = true)
    public int id;

    @DatabaseField(dataType = DataType.DATE_LONG)
    public Date recorded;

    @DatabaseField
    public short val;

    @DatabaseField(foreign = true, foreignAutoRefresh = true)
    public Party party;

    public String recordedString()
    {
        return standardTimeFormat.format(recorded);
    }
}
