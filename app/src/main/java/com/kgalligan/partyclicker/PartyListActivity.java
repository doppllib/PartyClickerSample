package com.kgalligan.partyclicker;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;

import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.presenter.PartyListPresenter;

import java.util.ArrayList;
import java.util.List;

public class PartyListActivity extends AppCompatActivity implements PartyListPresenter.UiInterface
{
    private PartyListPresenter presenter;

    private EditText partyNameString;
    private ArrayAdapter<Party> partyArrayAdapter;

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
            presenter.createParty(name);
        });

        partyListView.setOnItemClickListener((parent, view, position, id) ->
        {
            Party party = (Party) partyListView.getAdapter().getItem(position);
            presenter.callParty(party.id);
        });
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
        PartyActivity.callMe(PartyListActivity.this, party.id);
    }
}
