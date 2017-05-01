package com.kgalligan.partyclicker.platform;
/**
 * Created by kgalligan on 5/1/17.
 */

public interface LocationProvider
{
    /**
     * Asks host to start sending location updates. Host should return a string id
     * to identify which request this is. Pretty much will always be one, but just in case.
     * @param locationCallback
     * @return
     */
    void startLocationUpdates(LocationCallback locationCallback);

    /**
     * Stop location updates. Pass in id returned from start call.
     */
    void stopLocationCallback();
}
