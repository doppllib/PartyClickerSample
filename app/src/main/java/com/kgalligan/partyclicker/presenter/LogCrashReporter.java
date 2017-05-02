package com.kgalligan.partyclicker.presenter;
import android.util.Log;

/**
 * Created by kgalligan on 5/1/17.
 */

public class LogCrashReporter implements CrashReporter
{
    public static final String TAG = LogCrashReporter.class.getSimpleName();

    @Override
    public void log(String s)
    {
        Log.w(TAG, s);
    }

    @Override
    public void report(Throwable t)
    {
        Log.e(TAG, null, t);
    }
}
