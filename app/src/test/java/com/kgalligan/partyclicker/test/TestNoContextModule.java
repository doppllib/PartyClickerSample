package com.kgalligan.partyclicker.test;
import android.app.Application;

import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.DatabaseHelper;
import com.kgalligan.partyclicker.presenter.CrashReporter;
import com.kgalligan.partyclicker.presenter.LogCrashReporter;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/**
 * Created by kgalligan on 4/27/17.
 */
@Module
public class TestNoContextModule
{
    @Provides
    @Singleton
    DataProvider providesDataProvider()
    {
        return new MemoryDataProvider();
    }

    @Provides
    @Singleton
    Observable.Transformer providesSchedulerTransformer()
    {
        return o -> (Observable)o;
    }

    @Provides
    @Singleton
    CrashReporter providesCrashReporter()
    {
        return new LogCrashReporter();
    }
}
