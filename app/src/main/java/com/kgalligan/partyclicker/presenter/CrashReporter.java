package com.kgalligan.partyclicker.presenter;
/**
 * Created by kgalligan on 5/1/17.
 */

public interface CrashReporter
{
    void log(String s);
    void report(Throwable t);
}
