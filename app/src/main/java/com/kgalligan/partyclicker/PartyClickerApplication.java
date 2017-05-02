package com.kgalligan.partyclicker;
import android.app.Application;

import com.google.firebase.crash.FirebaseCrash;
import com.kgalligan.partyclicker.presenter.AppModule;
import com.kgalligan.partyclicker.presenter.CrashReporter;
import com.kgalligan.partyclicker.presenter.DaggerDaggerComponent;


/**
 * Created by kgalligan on 1/5/17.
 */

public class PartyClickerApplication extends Application
{


    @Override
    public void onCreate()
    {
        super.onCreate();

        CrashReporter crashReporter = new FirebaseCrashReporter();//new LogCrashReporter();
        AppModule appModule = new AppModule(this, crashReporter);
        AppManager.init(this, DaggerDaggerComponent.builder().appModule(appModule).build());
    }

    static class FirebaseCrashReporter implements CrashReporter
    {
        @Override
        public void log(String s)
        {
            FirebaseCrash.log(s);
        }

        @Override
        public void report(Throwable t)
        {
            FirebaseCrash.report(t);
        }
    }

}
