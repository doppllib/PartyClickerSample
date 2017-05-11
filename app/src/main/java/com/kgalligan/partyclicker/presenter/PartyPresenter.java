package com.kgalligan.partyclicker.presenter;
import com.google.j2objc.annotations.Weak;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.ModPersonTask;
import com.kgalligan.partyclicker.data.Party;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.inject.Inject;

import rx.Observable;

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
    Observable.Transformer schedulerTransformer;

    @Weak
    private UiInterface uiInterface;

    public interface UiInterface
    {
        void processing(boolean b);
        void updateUi();
    }

    public PartyPresenter(int partyId)
    {
        clearUiInterface();
        this.partyId = partyId;
    }

    public void applyUiInterface(UiInterface uiInterface)
    {
        this.uiInterface = uiInterface;
    }

    public void clearUiInterface()
    {
        uiInterface = new EmptyUiInterface();
    }

    static class PartyInfo
    {
        final Party party;
        final int       partyCount;

        public PartyInfo(Party party, int partyCount)
        {
            this.party = party;
            this.partyCount = partyCount;
        }
    }
    public void init()
    {
        uiInterface.processing(true);

        //Created a wrapper object. Originally had a zip operation, but we have a memory leak in rxjava/j2objc with zip. Working...
        Observable<PartyInfo> partyObservable = Observable.<PartyInfo> create(subscriber ->
        {
            subscriber.onNext(new PartyInfo(databaseHelper.loadParty(partyId), databaseHelper.countCurrentParty(partyId)));
            subscriber.onCompleted();
        })
                .compose((Observable.Transformer<PartyInfo, PartyInfo>)schedulerTransformer);

        partyObservable.subscribe(partyInfo -> {
            party = partyInfo.party;
            partyCount = partyInfo.partyCount;
            uiInterface.processing(false);
            uiInterface.updateUi();
        }, throwable -> crashReporter.report(throwable))
        ;

        party = databaseHelper.loadParty(partyId);
        partyCount = databaseHelper.countCurrentParty(partyId);
    }

    public void addPerson()
    {
        partyCount++;
        executorService.execute(new ModPersonTask(party, true, databaseHelper));
        uiInterface.updateUi();
    }

    public void removePerson()
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

    static class EmptyUiInterface implements UiInterface
    {
        @Override
        public void processing(boolean b)
        {}

        @Override
        public void updateUi()
        {}
    }
}
