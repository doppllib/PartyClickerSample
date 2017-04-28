package com.kgalligan.partyclicker.data;

/**
 * Created by kgalligan on 1/5/17.
 */

public class ModPersonTask implements Runnable
{
    private final Party party;
    private final boolean coming;
    private final DataProvider databaseHelper;

    public ModPersonTask(Party party, boolean coming, DataProvider databaseHelper)
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
