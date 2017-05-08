package com.kgalligan.partyclicker;
import android.app.Application;

import com.kgalligan.partyclicker.presenter.AppModule;
import com.kgalligan.partyclicker.presenter.CrashReporter;
import com.kgalligan.partyclicker.presenter.DaggerDaggerComponent;
import com.kgalligan.partyclicker.presenter.LogCrashReporter;


/**
 * Created by kgalligan on 1/5/17.
 */

public class PartyClickerApplication extends Application
{


    @Override
    public void onCreate()
    {
        super.onCreate();

        CrashReporter crashReporter = new LogCrashReporter();//new LogCrashReporter();
        AppModule appModule = new AppModule(this, crashReporter);
        AppManager.init(this, DaggerDaggerComponent.builder().appModule(appModule).build());
    }
}
