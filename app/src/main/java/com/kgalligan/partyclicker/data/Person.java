package com.kgalligan.partyclicker.data;
import android.arch.persistence.room.ColumnInfo;
import android.arch.persistence.room.Entity;
import android.arch.persistence.room.ForeignKey;
import android.arch.persistence.room.PrimaryKey;

import java.text.DateFormat;
import java.util.Date;

/**
 * Created by kgalligan on 1/5/17.
 */
@Entity(foreignKeys = @ForeignKey
        (
        entity = Party.class,
        parentColumns = "id",
        childColumns = "party_id",
        onDelete = ForeignKey.CASCADE
        )
)
public class Person
{
    private static final DateFormat standardTimeFormat = DateFormat.getTimeInstance(DateFormat.MEDIUM);

    @PrimaryKey(autoGenerate = true)
    private int id;

    private Date recorded;

    private short val;

    @ColumnInfo(name = "party_id")
    private int partyId;

    public String recordedString()
    {
        return standardTimeFormat.format(recorded);
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public Date getRecorded()
    {
        return recorded;
    }

    public void setRecorded(Date recorded)
    {
        this.recorded = recorded;
    }

    public short getVal()
    {
        return val;
    }

    public void setVal(short val)
    {
        this.val = val;
    }

    public int getPartyId()
    {
        return partyId;
    }

    public void setPartyId(int partyId)
    {
        this.partyId = partyId;
    }
}
