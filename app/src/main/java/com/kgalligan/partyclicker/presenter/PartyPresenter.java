package com.kgalligan.partyclicker.presenter;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.ModPersonTask;
import com.kgalligan.partyclicker.data.Party;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.inject.Inject;

/**
 * Created by kgalligan on 1/5/17.
 */

public class PartyPresenter
{
    private final int   partyId;
    private       Party party;
    private       int   partyCount;
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();

    @Inject
    DataProvider databaseHelper;

    public PartyPresenter(int partyId)
    {
        this.partyId = partyId;
    }

    public void init()
    {
        party = databaseHelper.loadParty(partyId);
        partyCount = databaseHelper.countCurrentParty(partyId);
    }

    public void addPerson()
    {
        partyCount++;
        executorService.execute(new ModPersonTask(party, true, databaseHelper));
    }

    public void removePerson()
    {
        if(partyCount > 0)
        {
            partyCount--;
            executorService.execute(new ModPersonTask(party, false, databaseHelper));
        }
    }

    public int getPartyCount()
    {
        return partyCount;
    }

    public Party getParty()
    {
        return party;
    }
}
