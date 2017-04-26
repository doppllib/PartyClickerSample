package com.kgalligan.partyclicker;
import android.app.Application;
import android.content.Context;

import com.kgalligan.partyclicker.presenter.DaggerComponent;

/**
 * Created by kgalligan on 1/5/17.
 */

public class AppManager
{
    private final  Application     application;
    private final  DaggerComponent daggerComponent;
    private static AppManager      instance;

    public AppManager(Application application, DaggerComponent daggerComponent)
    {
        this.application = application;
        this.daggerComponent = daggerComponent;
    }

    public static void init(Application application, DaggerComponent presenterComponent)
    {
        instance = new AppManager(application, presenterComponent);
    }

    public Application getApplication()
    {
        return application;
    }

    public DaggerComponent getDaggerComponent()
    {
        return daggerComponent;
    }

    public static AppManager getInstance()
    {
        return instance;
    }
}
