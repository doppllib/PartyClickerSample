package com.kgalligan.partyclicker.data;
import android.content.Context;

import com.kgalligan.partyclicker.AppManager;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by kgalligan on 1/5/17.
 */

public class PartyPresenter
{
    private final Party     party;
    private       int       partyCount;
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();

    public PartyPresenter(int partyId)
    {
        DatabaseHelper databaseHelper = DatabaseHelper.getInstance(AppManager.getContext());
        party = databaseHelper.loadParty(partyId);
        partyCount = databaseHelper.countCurrentParty(partyId);
    }


    public void addPerson()
    {
        partyCount++;
        executorService.execute(new ModPersonTask(party, true, AppManager.getContext()));
    }

    public void removePerson()
    {
        if(partyCount > 0)
        {
            partyCount--;
            executorService.execute(new ModPersonTask(party, false, AppManager.getContext()));
        }
    }

    public int getPartyCount()
    {
        return partyCount;
    }
}
