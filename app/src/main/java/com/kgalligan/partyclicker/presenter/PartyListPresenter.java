package com.kgalligan.partyclicker.presenter;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;

import java.util.List;

import javax.inject.Inject;

import io.reactivex.FlowableTransformer;
import io.reactivex.Observable;
import io.reactivex.ObservableTransformer;
import io.reactivex.disposables.Disposable;

/**
 * Created by kgalligan on 4/23/17.
 */

public class PartyListPresenter
{
    @Inject
    DataProvider databaseHelper;

    @Inject
    CrashReporter crashReporter;

    @Inject
    FlowableTransformer flowableTransformer;

    @Inject
    ObservableTransformer observableTransformer;

    private Disposable disposable;

    public interface UiInterface
    {
        void processing(boolean b);

        void refreshPartyList(List<Party> partyList);

        void showParty(Party party);
    }

    public void wire(UiInterface uiInterface)
    {
        uiInterface.processing(true);
        disposable = databaseHelper.allParties()
                .compose((FlowableTransformer<List<Party>, List<Party>>) flowableTransformer)
                .doOnNext(parties -> uiInterface.processing(false))
                .subscribe(uiInterface:: refreshPartyList);
    }

    public void unwire()
    {
        disposable.dispose();
        disposable = null;
    }

    /**
     * Open party screen for id.
     *
     * @param id
     */
    public void callParty(int id, UiInterface uiInterface)
    {
        Observable.fromCallable(() -> databaseHelper.loadParty(id))
                .compose((ObservableTransformer<Party, Party>) observableTransformer)
                .subscribe(party -> uiInterface.showParty(party),
                        throwable -> crashReporter.report(throwable));
    }

    /**
     * Create and show party.
     *
     * @param name
     */
    public void createParty(String name, UiInterface uiInterface)
    {
        crashReporter.log("Creating: " + name);
        Observable.fromCallable(() -> databaseHelper.createParty(name))
                .compose((ObservableTransformer<Party, Party>) observableTransformer)
                .doOnError(throwable -> crashReporter.report(throwable))
                .subscribe(party -> uiInterface.showParty(party));
    }

    public void deleteParty(int id)
    {
        Observable.fromCallable(() ->
        {
            Party party = databaseHelper.loadParty(id);
            databaseHelper.deleteParty(party);
            return party;
        }).compose((ObservableTransformer<Party, Party>) observableTransformer)
                .doOnError(throwable -> crashReporter.report(throwable))
                .subscribe();
    }

    int countPeople(Party party)
    {
        return databaseHelper.countCurrentParty(party.getId());
    }
}
