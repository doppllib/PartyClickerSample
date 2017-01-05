package com.kgalligan.partyclicker;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.kgalligan.partyclicker.data.PartyPresenter;

public class PartyActivity extends AppCompatActivity
{

    public static final String PARTY_ID = "PARTY_ID";
    private Button         addPersonButton;
    private View           removePersonButton;
    private PartyPresenter partyPresenter;

    public static void callMe(Activity activity, int partyId)
    {
        Intent intent = new Intent(activity, PartyActivity.class);
        intent.putExtra(PARTY_ID, partyId);
        activity.startActivity(intent);
    }


    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_party);
        addPersonButton = (Button) findViewById(R.id.addPersonButton);
        removePersonButton = findViewById(R.id.removePersonButton);

        addPersonButton.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                partyPresenter.addPerson();
                refreshUi();
            }
        });

        removePersonButton.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                partyPresenter.removePerson();
                refreshUi();
            }
        });

        partyPresenter = new PartyPresenter(getIntent().getIntExtra(PARTY_ID, - 1));

        refreshUi();
    }

    private void refreshUi()
    {
        int partyCount = partyPresenter.getPartyCount();
        addPersonButton.setText(Integer.toString(partyCount));
        removePersonButton.setEnabled(partyCount > 0);
    }
}
