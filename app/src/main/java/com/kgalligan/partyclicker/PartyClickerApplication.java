package com.kgalligan.partyclicker;
import android.app.Application;

import com.kgalligan.partyclicker.presenter.AppModule;
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
        AppModule appModule = new AppModule(this);


        AppManager
                .init(this,
                        DaggerDaggerComponent.builder()
                                .appModule(appModule).build());



    }
}
