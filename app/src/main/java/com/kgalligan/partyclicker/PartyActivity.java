package com.kgalligan.partyclicker;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.kgalligan.partyclicker.presenter.PartyPresenter;

public class PartyActivity extends AppCompatActivity implements PartyPresenter.UiInterface
{

    public static final String PARTY_ID = "PARTY_ID";
    private Button         addPersonButton;
    private View           removePersonButton;
    private TextView showCountText;
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
        showCountText = (TextView)findViewById(R.id.showCountText);

        addPersonButton.setOnClickListener(v -> partyPresenter.addPerson());

        removePersonButton.setOnClickListener(v -> partyPresenter.removePerson());

        partyPresenter = new PartyPresenter(getIntent().getIntExtra(PARTY_ID, - 1));
        AppManager.getInstance().getDaggerComponent().inject(partyPresenter);

        partyPresenter.applyUiInterface(this);
        partyPresenter.init();
    }

    @Override
    protected void onDestroy()
    {
        super.onDestroy();
        partyPresenter.clearUiInterface();
    }

    @Override
    public void processing(boolean b)
    {
        findViewById(R.id.viewControls).setVisibility(b ? View.GONE : View.VISIBLE);
        findViewById(R.id.loadProgress).setVisibility(b ? View.VISIBLE : View.GONE);
    }

    @Override
    public void updateUi()
    {
        int partyCount = partyPresenter.getPartyCount();
        showCountText.setText(Integer.toString(partyCount));
        removePersonButton.setEnabled(partyPresenter.isRemoveActive());
    }
}
