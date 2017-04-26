package com.kgalligan.partyclicker.data;
import android.content.Context;

/**
 * Created by kgalligan on 1/5/17.
 */

public class ModPersonTask implements Runnable
{
    private final Party party;
    private final boolean coming;
    private final DatabaseHelper databaseHelper;

    public ModPersonTask(Party party, boolean coming, DatabaseHelper databaseHelper)
    {
        this.party = party;
        this.coming = coming;
        this.databaseHelper = databaseHelper;
    }

    @Override
    public void run()
    {
        databaseHelper.addPerson(party, coming);
    }
}
