package com.kgalligan.partyclicker.data;
import android.arch.persistence.room.TypeConverter;

import java.util.Date;

/**
 * Created by kgalligan on 5/18/17.
 */

public class DateTypeConverter
{
    @TypeConverter
    public Date fromTimestamp(Long value)
    {
        return value == null ? null : new Date(value);
    }

    @TypeConverter
    public Long dateToTimestamp(Date date)
    {
        if(date == null)
        {
            return null;
        }
        else
        {
            return date.getTime();
        }
    }
}
