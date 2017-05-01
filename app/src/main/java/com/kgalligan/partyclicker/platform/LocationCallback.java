package com.kgalligan.partyclicker.platform;
/**
 * Created by kgalligan on 5/1/17.
 */

public interface LocationCallback
{
    void sendLocation(LocationData location);

    /**
     * Sorry. http://thumb1.shutterstock.com/display_pic_with_logo/6748/239017558/stock-photo-a-fallen-robot-toy-239017558.jpg
     */
    void forceKill();
}
