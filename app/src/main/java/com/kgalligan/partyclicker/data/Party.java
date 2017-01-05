package com.kgalligan.partyclicker.data;
import java.text.SimpleDateFormat;
import java.util.Date;

import co.touchlab.squeaky.field.DataType;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;

/**
 * Created by kgalligan on 1/5/17.
 */
@DatabaseTable
public class Party
{
    private static final SimpleDateFormat timeFormat = new SimpleDateFormat("MM/dd/yyyy hh:MM a");

    @DatabaseField(generatedId = true)
    public int id;

    @DatabaseField
    public String name;

    @DatabaseField(dataType = DataType.DATE_LONG)
    public Date created;

    @Override
    public String toString()
    {
        return name + " - " + timeFormat.format(created);
    }
}
