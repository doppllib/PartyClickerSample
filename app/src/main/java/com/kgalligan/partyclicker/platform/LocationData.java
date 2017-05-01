package com.kgalligan.partyclicker.platform;
/**
 * Created by kgalligan on 5/1/17.
 */

public class LocationData
{
    private double lat;
    private double lon;
    private double accuracy;

    public LocationData(double lat, double lon, double accuracy)
    {
        this.lat = lat;
        this.lon = lon;
        this.accuracy = accuracy;
    }

    public double getLat()
    {
        return lat;
    }

    public double getLon()
    {
        return lon;
    }

    public double getAccuracy()
    {
        return accuracy;
    }
}
