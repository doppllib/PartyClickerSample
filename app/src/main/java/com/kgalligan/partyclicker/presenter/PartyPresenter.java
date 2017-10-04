package com.kgalligan.partyclicker.presenter;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.ModPersonTask;
import com.kgalligan.partyclicker.data.Party;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.inject.Inject;

import io.reactivex.Observable;
import io.reactivex.ObservableTransformer;

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

    @Inject
    CrashReporter crashReporter;

    @Inject
    ObservableTransformer schedulerTransformer;

    public interface UiInterface
    {
        void processing(boolean b);

        void updateUi();
    }

    public PartyPresenter(int partyId)
    {
        this.partyId = partyId;
    }

    public void wire(UiInterface uiInterface)
    {
        uiInterface.processing(true);

        Observable.fromCallable(() -> new PartyInfo(databaseHelper.loadParty(partyId),
                databaseHelper.countCurrentParty(partyId)))
                .compose((ObservableTransformer<PartyInfo, PartyInfo>) schedulerTransformer)
                .subscribe(partyInfo ->
                {
                    party = partyInfo.party;
                    partyCount = partyInfo.partyCount;
                    uiInterface.processing(false);
                    uiInterface.updateUi();
                }, throwable -> crashReporter.report(throwable));
    }

    public void unwire()
    {
    }

    static class PartyInfo
    {
        final Party party;
        final int   partyCount;

        public PartyInfo(Party party, int partyCount)
        {
            this.party = party;
            this.partyCount = partyCount;
        }
    }

    public void addPerson(UiInterface uiInterface)
    {
        partyCount++;
        executorService.execute(new ModPersonTask(party, true, databaseHelper));
        uiInterface.updateUi();
    }

    public void removePerson(UiInterface uiInterface)
    {
        if(partyCount > 0)
        {
            partyCount--;
            executorService.execute(new ModPersonTask(party, false, databaseHelper));
        }
        uiInterface.updateUi();
    }

    public int getPartyCount()
    {
        return partyCount;
    }

    public Party getParty()
    {
        return party;
    }

    public boolean isRemoveActive()
    {
        return partyCount > 0;
    }
}
