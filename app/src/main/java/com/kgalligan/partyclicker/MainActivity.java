package com.kgalligan.partyclicker;

import android.Manifest;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.platform.LocationCallback;
import com.kgalligan.partyclicker.platform.LocationData;
import com.kgalligan.partyclicker.platform.LocationProvider;
import com.kgalligan.partyclicker.presenter.PartyListPresenter;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class MainActivity extends AppCompatActivity implements PartyListPresenter.UiInterface, LocationProvider
{
    public static final int MY_PERMISSIONS_REQUEST_READ_CONTACTS = 22324;
    private PartyListPresenter presenter;

    private EditText partyNameString;
    private ArrayAdapter<Party> partyArrayAdapter;
    private LocationListener locationListener;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        presenter = new PartyListPresenter();
        presenter.applyUiInterface(this);
        AppManager.getInstance().getDaggerComponent().inject(presenter);

        final ListView partyListView = (ListView) findViewById(R.id.partyListView);
        partyArrayAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, new ArrayList<Party>());
        partyListView.setAdapter(partyArrayAdapter);

        partyNameString = (EditText) findViewById(R.id.partyNameString);
        findViewById(R.id.addPartyButton).setOnClickListener(v ->
        {
            String name = partyNameString.getText().toString().trim();
            presenter.createParty(name, hasLocationPermission() ? this : null);
        });

        partyListView.setOnItemClickListener((parent, view, position, id) ->
        {
            Party party = (Party) partyListView.getAdapter().getItem(position);
            presenter.callParty(party.id);
        });

        checkLocationPermissions();
    }

    @Override
    protected void onDestroy()
    {
        super.onDestroy();
        presenter.clearUiInterface();
    }

    @Override
    protected void onResume()
    {
        super.onResume();
        refreshParties();
    }

    private void refreshParties()
    {
        presenter.callRefreshPartyList();
    }

    @Override
    public void processing(boolean b)
    {
        findViewById(R.id.viewControls).setVisibility(b ? View.GONE : View.VISIBLE);
        findViewById(R.id.loadProgress).setVisibility(b ? View.VISIBLE : View.GONE);
    }

    @Override
    public void refreshPartyList(List<Party> partyList)
    {
        partyArrayAdapter.clear();
        partyArrayAdapter.addAll(partyList);
        partyArrayAdapter.notifyDataSetChanged();
    }

    @Override
    public void showParty(Party party)
    {
        PartyActivity.callMe(MainActivity.this, party.id);
    }


    public void checkLocationPermissions()
    {
        if(hasLocationPermission())
        {

            // Should we show an explanation?
            if(ActivityCompat.shouldShowRequestPermissionRationale(this, Manifest.permission.ACCESS_FINE_LOCATION))
            {

                // Show an explanation to the user *asynchronously* -- don't block
                // this thread waiting for the user's response! After the user
                // sees the explanation, try again to request the permission.

                Toast.makeText(this, "No location because you said no...", Toast.LENGTH_LONG).show();
            }
            else
            {

                // No explanation needed, we can request the permission.

                ActivityCompat.requestPermissions(this,
                        new String[] {Manifest.permission.ACCESS_FINE_LOCATION},
                        MY_PERMISSIONS_REQUEST_READ_CONTACTS);

                // MY_PERMISSIONS_REQUEST_READ_CONTACTS is an
                // app-defined int constant. The callback method gets the
                // result of the request.
            }
        }
    }

    private boolean hasLocationPermission()
    {
        return ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) !=
                PackageManager.PERMISSION_GRANTED;
    }

    @Override
    public void startLocationUpdates(LocationCallback locationCallback)
    {
        boolean gpsEnabled = getLocationService(getApplication()).isProviderEnabled(LocationManager.GPS_PROVIDER);
        if(gpsEnabled)
        {
            locationListener = startLocationListener(getApplication(), locationCallback);
        }
    }

    @Override
    public void stopLocationCallback()
    {
        if(locationListener != null)
        {
            getLocationService(getApplication()).removeUpdates(locationListener);
            locationListener = null;
        }
    }

    private LocationManager getLocationService(Application application)
    {
        return (LocationManager) application.getSystemService(Context.LOCATION_SERVICE);
    }

    private LocationListener startLocationListener(Application application, LocationCallback locationCallback)
    {
        // Acquire a reference to the system Location Manager
        LocationManager locationManager = getLocationService(application);

        // Define a listener that responds to location updates
        LocationListener locationListener = new LocationListener() {
            public void onLocationChanged(Location location) {

                if(location.hasAccuracy())
                {
                    locationCallback.sendLocation(new LocationData(location.getLatitude(), location.getLongitude(), location.getAccuracy()));
                }
            }

            public void onStatusChanged(String provider, int status, Bundle extras) {}

            public void onProviderEnabled(String provider) {}

            public void onProviderDisabled(String provider) {stopLocationCallback();}
        };

        // Register the listener with the Location Manager to receive location updates
        try
        {
            locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 0, 0, locationListener);
        }
        catch(SecurityException e)
        {
            throw new RuntimeException(e);
        }

        return locationListener;
    }

    /*@Override
    public void onRequestPermissionsResult(int requestCode,
            String permissions[], int[] grantResults) {
        switch (requestCode) {
            case MY_PERMISSIONS_REQUEST_READ_CONTACTS: {
                // If request is cancelled, the result arrays are empty.
                if (grantResults.length > 0
                        && grantResults[0] == PackageManager.PERMISSION_GRANTED) {

                    // permission was granted, yay! Do the
                    // contacts-related task you need to do.

                } else {

                    // permission denied, boo! Disable the
                    // functionality that depends on this permission.
                }
                return;
            }

            // other 'case' lines to check for other
            // permissions this app might request
        }
    }*/
}
