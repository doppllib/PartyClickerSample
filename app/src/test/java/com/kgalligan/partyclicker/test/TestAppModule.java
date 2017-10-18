package com.kgalligan.partyclicker.test;
import android.app.Application;
import android.arch.persistence.room.Room;

import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.DatabaseHelper;
import com.kgalligan.partyclicker.data.PartyDatabase;
import com.kgalligan.partyclicker.presenter.CrashReporter;
import com.kgalligan.partyclicker.presenter.LogCrashReporter;

import javax.inject.Singleton;

import co.touchlab.doppl.testing.DopplRuntimeEnvironment;
import dagger.Module;
import dagger.Provides;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


/**
 * Created by kgalligan on 4/27/17.
 */
@Module
public class TestAppModule
{
    @Provides
    @Singleton
    Application providesApplication()
    {
        return DopplRuntimeEnvironment.getApplication();
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
        return Room.databaseBuilder(application, PartyDatabase.class, "hmm").allowMainThreadQueries().build();
    }

    @Provides
    @Singleton
    CrashReporter providesCrashReporter()
    {
        return new LogCrashReporter();
    }

    @Provides
    ObservableTransformer providesSchedulerTransformer()
    {
        return upstream -> upstream.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
    }
}
