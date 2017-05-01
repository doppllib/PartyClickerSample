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
        this.partyId = partyId;
    }

    public void applyUiInterface(UiInterface uiInterface)
    {
        this.uiInterface = uiInterface;
    }

    public void clearUiInterface()
    {
        uiInterface = null;
    }

    public void init()
    {
        uiInterface.processing(true);

        Observable<Party> partyObservable = Observable.<Party> create(subscriber ->
        {
            subscriber.onNext(databaseHelper.loadParty(partyId));
            subscriber.onCompleted();
        })
                .compose(schedulerTransformer);


        Observable<Integer> integerObservable = Observable.<Integer> create(subscriber ->
        {
            subscriber.onNext(databaseHelper.countCurrentParty(partyId));
            subscriber.onCompleted();
        }).compose(schedulerTransformer);

        Observable.zip(partyObservable, integerObservable, (party1, integer) -> {
           party = party1;
           partyCount = integer;
           return integer;
        })
        .subscribe(integer -> {
            uiInterface.processing(false);
            uiInterface.updateUi();
        })
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
}
