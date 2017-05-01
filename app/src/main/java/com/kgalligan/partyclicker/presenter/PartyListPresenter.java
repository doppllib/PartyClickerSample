package com.kgalligan.partyclicker.presenter;
import android.support.annotation.NonNull;
import android.util.Log;

import com.google.j2objc.annotations.Weak;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.data.Person;
import com.kgalligan.partyclicker.platform.LocationCallback;
import com.kgalligan.partyclicker.platform.LocationData;
import com.kgalligan.partyclicker.platform.LocationProvider;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;


import javax.inject.Inject;
import javax.inject.Named;

import rx.Observable;
import rx.Scheduler;

/**
 * Created by kgalligan on 4/23/17.
 */

public class PartyListPresenter
{
    @Inject
    DataProvider databaseHelper;

    @Inject
    Observable.Transformer schedulerTransformer;

    @Weak
    private UiInterface uiInterface;

    public interface UiInterface
    {
        void processing(boolean b);
        void refreshPartyList(List<Party> partyList);
        void showParty(Party party);
    }

    public void applyUiInterface(UiInterface uiInterface)
    {
        this.uiInterface = uiInterface;
    }

    public void clearUiInterface()
    {
        uiInterface = null;
    }

    public void callRefreshPartyList()
    {
        uiInterface.processing(true);
        Log.w(PartyListPresenter.class.getSimpleName(), "callRefreshPartyList");
        Observable.<List<Party>>create(subscriber -> {
            subscriber.onNext(databaseHelper.allParties());
            subscriber.onCompleted();
        })
                .compose((Observable.Transformer<List<Party>, List<Party>>)schedulerTransformer)
                .subscribe(o -> {
                    uiInterface.refreshPartyList(o);
                    uiInterface.processing(false);
                });
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
                .subscribe(party -> uiInterface.showParty(party));
    }

    /**
     * Create and show party.
     *
     * @param name
     */
    public void createParty(String name, LocationProvider locationProvider)
    {
        Observable.create()
        Observable.<Party>create(subscriber -> {
            subscriber.onNext(databaseHelper.createParty(name));
            subscriber.onCompleted();
        })
                .compose((Observable.Transformer<Party, Party>)schedulerTransformer)
                .subscribe(party -> uiInterface.showParty(party));
    }

    public void deleteParty(int id)
    {
        Observable.create(subscriber -> {
            Party party = databaseHelper.loadParty(id);
            databaseHelper.deleteParty(party);
            subscriber.onNext(party);
            subscriber.onCompleted();
        })
                .compose(schedulerTransformer)
                .subscribe(o -> {
                    callRefreshPartyList();
                });
    }

    public int countPeople(Party party)
    {
        return databaseHelper.countCurrentParty(party.id);
    }

    public List<Person> allPeople(Party party)
    {
        return databaseHelper.allPeopleForParty(party);
    }

    private Observable<LocationData> findLocation(LocationProvider locationProvider, double accuracy)
    {
        return Observable.create(subscriber -> {

            AtomicReference<String> locationProviderId = new AtomicReference<String>(null);

            locationProvider.startLocationUpdates(new LocationCallback()
            {
                @Override
                public void sendLocation(LocationData location)
                {
//                    Log.w(TAG, "LOCATION_CALLBACK: "+ orderLogic.geoFormat().format(location.getLat()) +"/" + orderLogic.geoFormat().format(location.getLon()) + " - accuracy: "+ orderLogic.geoFormat().format(location.getAccuracy()));

                    if(location.getAccuracy() <= accuracy)
                    {
                        String id = waitForId();

                        locationProvider.stopLocationCallback(id);
                        subscriber.onNext(location);
                        subscriber.onCompleted();
                    }
                }

                @Override
                public void forceKill()
                {
                    subscriber.onCompleted();
                }

                @NonNull
                private String waitForId()
                {
                    int loopCount = 0;
                    String id = locationProviderId.get();
                    while(id == null)
                    {
                        //Wait for thread settle
                        try
                        {
                            Thread.sleep(500);
                        }
                        catch(InterruptedException e)
                        {
                            //
                        }
                        loopCount++;
                        if(loopCount > 3)
                        {
                            //Something very wrong
                            throw new RuntimeException("No response from location provider");
                        }
                    }
                    return id;
                }
            });

            if(providerId != null)
                locationProviderId.set(providerId);
            else
                subscriber.onCompleted();
        });
    }
}
