package com.kgalligan.partyclicker;
import android.app.Application;

/**
 * Created by kgalligan on 1/5/17.
 */

public class PartyClickerApplication extends Application
{
    @Override
    public void onCreate()
    {
        super.onCreate();
        AppManager.init(this);
    }
}
