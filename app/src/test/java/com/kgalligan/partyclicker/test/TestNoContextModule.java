package com.kgalligan.partyclicker.test;

import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.presenter.CrashReporter;
import com.kgalligan.partyclicker.presenter.LogCrashReporter;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;
import io.reactivex.FlowableTransformer;
import io.reactivex.Observable;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;

/**
 * Created by kgalligan on 4/27/17.
 */
@Module
public class TestNoContextModule
{
    private final DataProvider dataProvider;
    private final CrashReporter crashReporter;

    public TestNoContextModule(DataProvider dataProvider, CrashReporter crashReporter)
    {
        this.dataProvider = dataProvider;
        this.crashReporter = crashReporter;
    }

    public TestNoContextModule()
    {
        this(new MemoryDataProvider(), new CrashReporter()
        {
            @Override
            public void log(String s)
            {

            }

            @Override
            public void report(Throwable t)
            {

            }
        });
    }

    @Provides
    @Singleton
    DataProvider providesDataProvider()
    {
        return dataProvider;
    }

    @Provides
    @Singleton
    ObservableTransformer providesSchedulerTransformer()
    {
        return o -> o;
    }

    @Provides
    FlowableTransformer providesFlowableTransformer()
    {
        return upstream -> upstream;
    }

    @Provides
    @Singleton
    CrashReporter providesCrashReporter()
    {
        return crashReporter;
    }
}
