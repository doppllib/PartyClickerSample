package com.kgalligan.partyclicker;
import android.app.Application;
import android.content.Context;

/**
 * Created by kgalligan on 1/5/17.
 */

public class AppManager
{
    private static Application context;

    public static void init(Application context)
    {
        AppManager.context = context;
    }

    public static Context getContext()
    {
        return context;
    }
}
