package com.kgalligan.partyclicker.data;
import android.content.Context;

import co.touchlab.android.threading.tasks.Task;

/**
 * Created by kgalligan on 1/5/17.
 */

public class ModPersonTask extends Task
{
    private final Party party;
    private final boolean coming;

    public ModPersonTask(Party party, boolean coming)
    {
        this.party = party;
        this.coming = coming;
    }

    @Override
    protected void run(Context context) throws Throwable
    {
        DatabaseHelper.getInstance(context).addPerson(party, coming);
    }

    @Override
    protected boolean handleError(Context context, Throwable throwable)
    {
        return false;
    }
}
