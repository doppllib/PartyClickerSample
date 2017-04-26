package com.kgalligan.partyclicker.presenter;
import com.google.j2objc.annotations.Weak;
import com.kgalligan.partyclicker.data.DatabaseHelper;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.data.Person;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import co.touchlab.squeaky.stmt.Where;

/**
 * Created by kgalligan on 4/23/17.
 */

public class PartyListPresenter
{
    @Inject
    DatabaseHelper databaseHelper;

    @Weak
    private UiInterface uiInterface;

    public interface UiInterface
    {
        void refreshPartyList(List<Party> partyList);
        void showParty(Party party);
    }

    public void applyUiInterface(UiInterface uiInterface)
    {
        this.uiInterface = uiInterface;
    }

    public void clearUiInterface()
    {
        uiInterface = null;
    }

    public void callRefreshPartyList()
    {
        uiInterface.refreshPartyList(databaseHelper.allParties());
    }

    public void callParty(int id)
    {
        uiInterface.showParty(databaseHelper.loadParty(id));
    }

    public void createParty(String name)
    {
        Party party = databaseHelper.createParty(name);
        uiInterface.showParty(party);
    }

    public void deleteParty(int id)
    {
        databaseHelper.deleteParty(databaseHelper.loadParty(id));
    }

    public int countPeople(Party party)
    {
        return databaseHelper.countCurrentParty(party.id);
    }

    public List<Person> allPeople(Party party)
    {
        try
        {
            Where<Person> where = new Where<>(databaseHelper.getPersonDao());
            where.eq("party", this);
            return databaseHelper.getPersonDao().query(where).orderBy("recorded").list();
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
}
