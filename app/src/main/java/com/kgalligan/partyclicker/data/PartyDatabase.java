package com.kgalligan.partyclicker.data;
import android.arch.persistence.room.Database;
import android.arch.persistence.room.RoomDatabase;
import android.arch.persistence.room.TypeConverters;

/**
 * Created by kgalligan on 5/18/17.
 */
@Database(entities = {Party.class, Person.class}, version = 1)
@TypeConverters({DateTypeConverter.class})
public abstract class PartyDatabase extends RoomDatabase
{
    public abstract PartyDao partyDao();
}
