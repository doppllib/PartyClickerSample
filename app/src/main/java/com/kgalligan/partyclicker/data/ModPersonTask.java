package com.kgalligan.partyclicker.data;
import android.content.Context;

/**
 * Created by kgalligan on 1/5/17.
 */

public class ModPersonTask implements Runnable
{
    private final Party party;
    private final boolean coming;
    private final Context context;

    public ModPersonTask(Party party, boolean coming, Context context)
    {
        this.party = party;
        this.coming = coming;
        this.context = context;
    }

    @Override
    public void run()
    {
        DatabaseHelper.getInstance(context).addPerson(party, coming);
    }
}
