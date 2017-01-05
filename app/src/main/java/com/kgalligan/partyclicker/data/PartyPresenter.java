package com.kgalligan.partyclicker.data;
import android.content.Context;

import co.touchlab.android.threading.tasks.Task;
import co.touchlab.android.threading.tasks.TaskQueue;

/**
 * Created by kgalligan on 1/5/17.
 */

public class PartyPresenter
{
    private final int       partyId;
    private final Party     party;
    private       int       partyCount;
    private final TaskQueue taskQueue;
    private final Task      comingTask;
    private final Task      goingTask;

    public PartyPresenter(Context context, int partyId)
    {
        this.partyId = partyId;
        DatabaseHelper databaseHelper = DatabaseHelper.getInstance(context);
        party = databaseHelper.loadParty(partyId);
        partyCount = databaseHelper.countCurrentParty(partyId);
        this.taskQueue = TaskQueue.loadQueueDefault(context);
        comingTask = new ModPersonTask(party, true);
        goingTask = new ModPersonTask(party, false);
    }


    public void addPerson()
    {
        partyCount++;
        taskQueue.execute(comingTask);
    }

    public void removePerson()
    {
        if(partyCount > 0)
        {
            partyCount--;
            taskQueue.execute(goingTask);
        }
    }

    public int getPartyCount()
    {
        return partyCount;
    }
}
