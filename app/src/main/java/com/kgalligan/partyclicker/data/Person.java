package com.kgalligan.partyclicker.data;
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
    @DatabaseField(generatedId = true)
    public int id;

    @DatabaseField(dataType = DataType.DATE_LONG)
    public Date recorded;

    @DatabaseField
    public short val;

    @DatabaseField(foreign = true, foreignAutoRefresh = true)
    public Party party;
}
