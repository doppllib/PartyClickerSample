package com.kgalligan.partyclicker;

import android.database.DatabaseUtils;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;

import com.kgalligan.partyclicker.data.DatabaseHelper;
import com.kgalligan.partyclicker.data.Party;

public class MainActivity extends AppCompatActivity
{

    private ListView partyListView;
    private EditText partyNameString;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        partyListView = (ListView) findViewById(R.id.partyListView);
        partyNameString = (EditText) findViewById(R.id.partyNameString);
        findViewById(R.id.addPartyButton).setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                String name = partyNameString.getText().toString().trim();
                Party party = DatabaseHelper.getInstance(MainActivity.this).createParty(name);
                PartyActivity.callMe(MainActivity.this, party.id);
            }
        });

        partyListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id)
            {
                Party party = (Party) partyListView.getAdapter().getItem(position);
                PartyActivity.callMe(MainActivity.this, party.id);
            }
        });
    }

    @Override
    protected void onResume()
    {
        super.onResume();
        refreshParties();
    }

    private void refreshParties()
    {
        DatabaseHelper databaseHelper = DatabaseHelper.getInstance(this);
        partyListView.setAdapter(new ArrayAdapter<Party>(this, android.R.layout.simple_list_item_1, databaseHelper.allParties()));
    }
}
