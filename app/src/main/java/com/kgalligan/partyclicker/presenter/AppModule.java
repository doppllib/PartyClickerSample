package com.kgalligan.partyclicker.presenter;
import android.app.Application;
import android.arch.persistence.room.Room;

import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.DatabaseHelper;
import com.kgalligan.partyclicker.data.PartyDatabase;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;
import io.reactivex.FlowableTransformer;
import io.reactivex.Observable;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


/**
 * Created by kgalligan on 4/23/17.
 */
@Module
public class AppModule
{
    private final Application application;
    private final CrashReporter crashReporter;

    public AppModule(Application application, CrashReporter crashReporter)
    {
        this.application = application;
        this.crashReporter = crashReporter;
    }

    @Provides
    @Singleton
    Application providesApplication()
    {
        return application;
    }

    @Provides
    @Singleton
    CrashReporter providesCrashReporter()
    {
        return crashReporter;
    }

    @Provides
    @Singleton
    DataProvider providesDataProvider(PartyDatabase partyDatabase)
    {
        return new DatabaseHelper(partyDatabase);
    }

    @Provides
    @Singleton
    PartyDatabase providesPartyDatabase(Application application)
    {
        return Room.databaseBuilder(application, PartyDatabase.class, "ChrisPontius").build();
    }

    @Provides
    ObservableTransformer providesSchedulerTransformer()
    {
        return upstream -> upstream.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
    }

    @Provides
    FlowableTransformer providesFlowableTransformer()
    {
        return upstream -> upstream.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
    }
}
