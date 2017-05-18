package com.kgalligan.partyclicker.data;
import android.arch.persistence.room.Entity;
import android.arch.persistence.room.PrimaryKey;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by kgalligan on 1/5/17.
 */
@Entity
public class Party
{
    private static final SimpleDateFormat timeFormat = new SimpleDateFormat("MM/dd/yyyy hh:MM a");
    private static final DateFormat       standardDateFormat = DateFormat.getDateInstance(DateFormat.MEDIUM);
    private static final DateFormat       standardTimeFormat = DateFormat.getTimeInstance(DateFormat.SHORT);

    @PrimaryKey(autoGenerate = true)
    public int id;

    private String name;

    private Date created;

    public String dateString()
    {
        return standardDateFormat.format(created) + " - " + standardTimeFormat.format(created);
    }

    @Override
    public String toString()
    {
        return name + " - " + timeFormat.format(created);
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public Date getCreated()
    {
        return created;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public void setCreated(Date created)
    {
        this.created = created;
    }
}
