package com.kgalligan.partyclicker.presenter;
import android.app.Application;

import com.kgalligan.partyclicker.data.DatabaseHelper;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;

/**
 * Created by kgalligan on 4/23/17.
 */
@Module
public class AppModule
{
    private final Application application;

    public AppModule(Application application)
    {
        this.application = application;
    }

    @Provides
    @Singleton
    Application providesApplication()
    {
        return application;
    }

    @Provides
    @Singleton
    DatabaseHelper providesDatabaseHelper(Application application)
    {
        return new DatabaseHelper(application);
    }
}
