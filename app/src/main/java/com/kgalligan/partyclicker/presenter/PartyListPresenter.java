package com.kgalligan.partyclicker.presenter;
import android.support.annotation.NonNull;
import android.util.Log;

import com.google.j2objc.annotations.Weak;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.data.Person;

import java.util.List;

import javax.inject.Inject;

import rx.Observable;

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
    Observable.Transformer schedulerTransformer;

    @Weak
    @NonNull
    private UiInterface uiInterface;

    public interface UiInterface
    {
        void processing(boolean b);
        void refreshPartyList(List<Party> partyList);
        void showParty(Party party);
    }

    public PartyListPresenter()
    {
        clearUiInterface();
    }

    public void applyUiInterface(UiInterface uiInterface)
    {
        this.uiInterface = uiInterface;
    }

    public void clearUiInterface()
    {
        uiInterface = new EmptyUiInterface();
    }

    public void callRefreshPartyList()
    {
        uiInterface.processing(true);

        Observable.<List<Party>>create(subscriber -> {
            subscriber.onNext(databaseHelper.allParties());
            subscriber.onCompleted();
        })
                .compose((Observable.Transformer<List<Party>, List<Party>>)schedulerTransformer)
                .subscribe(o -> {
                    uiInterface.refreshPartyList(o);
                    uiInterface.processing(false);
                }, throwable -> crashReporter.report(throwable));
    }

    /**
     * Open party screen for id.
     *
     * @param id
     */
    public void callParty(int id)
    {
        Observable.<Party>create(subscriber -> {
            subscriber.onNext(databaseHelper.loadParty(id));
            subscriber.onCompleted();
        })
                .compose((Observable.Transformer<Party, Party>)schedulerTransformer)
                .subscribe(party -> uiInterface.showParty(party), throwable -> crashReporter.report(throwable));
    }

    /**
     * Create and show party.
     *
     * @param name
     */
    public void createParty(String name)
    {
        crashReporter.log("Creating: "+ name);
        Observable.<Party>create(subscriber -> {
            subscriber.onNext(databaseHelper.createParty(name));
            subscriber.onCompleted();
        })
                .compose((Observable.Transformer<Party, Party>)schedulerTransformer)
                .subscribe(party -> uiInterface.showParty(party), throwable -> crashReporter.report(throwable));
    }

    public void deleteParty(int id)
    {
        Observable.<Party>create(subscriber -> {
            Party party = databaseHelper.loadParty(id);
            databaseHelper.deleteParty(party);
            subscriber.onNext(party);
            subscriber.onCompleted();
        })
                .compose((Observable.Transformer<Party, Party>)schedulerTransformer)
                .subscribe(o -> callRefreshPartyList(),
                        throwable -> crashReporter.report(throwable));
    }

    public int countPeople(Party party)
    {
        return databaseHelper.countCurrentParty(party.id);
    }

    public List<Person> allPeople(Party party)
    {
        return databaseHelper.allPeopleForParty(party);
    }

    static class EmptyUiInterface implements UiInterface
    {
        @Override
        public void processing(boolean b)
        {}

        @Override
        public void refreshPartyList(List<Party> partyList)
        {}

        @Override
        public void showParty(Party party)
        {}
    }
}
