package com.kgalligan.partyclicker.data;
import com.kgalligan.partyclicker.AppManager;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import co.touchlab.squeaky.field.DataType;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.stmt.Where;
import co.touchlab.squeaky.table.DatabaseTable;

/**
 * Created by kgalligan on 1/5/17.
 */
@DatabaseTable
public class Party
{
    private static final SimpleDateFormat timeFormat = new SimpleDateFormat("MM/dd/yyyy hh:MM a");
    private static final DateFormat       standardDateFormat = DateFormat.getDateInstance(DateFormat.MEDIUM);
    private static final DateFormat       standardTimeFormat = DateFormat.getTimeInstance(DateFormat.SHORT);

    @DatabaseField(generatedId = true)
    public int id;

    @DatabaseField
    public String name;

    @DatabaseField(dataType = DataType.DATE_LONG)
    public Date created;

    public String dateString()
    {
        return standardDateFormat.format(created) + " - " + standardTimeFormat.format(created);
    }

    @Override
    public String toString()
    {
        return name + " - " + timeFormat.format(created);
    }
}
