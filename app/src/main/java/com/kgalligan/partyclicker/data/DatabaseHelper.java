package com.kgalligan.partyclicker.data;

import java.util.Date;
import java.util.List;


/**
 * Created by kgalligan on 1/5/17.
 */
public class DatabaseHelper implements DataProvider
{
    private final PartyDatabase partyDatabase;

    public DatabaseHelper(PartyDatabase partyDatabase)
    {
        this.partyDatabase = partyDatabase;
    }

    public int countCurrentParty(int partyId)
    {
        List<Person> people = partyDatabase.partyDao().allPeopleForParty(partyId);
        int count = 0;

        for(Person person : people)
        {
            count += person.getVal();
        }
        return count;
        //return (int)DatabaseUtils.longForQuery(getWritableDatabase(), "select sum(val) from person where party_id = ?", new String[]{Integer.toString(partyId)});
    }

    @Override
    public List<Person> allPeopleForParty(Party party)
    {
        return partyDatabase.partyDao().allPeopleForParty(party.getId());
    }

    public void addPerson(Party party, boolean coming)
    {
        Person person = new Person();
        person.setPartyId(party.getId());
        person.setRecorded(new Date());
        person.setVal((short)(coming ? 1 : -1));

        partyDatabase.partyDao().createPerson(person);
    }

    public List<Party> allParties()
    {
        return partyDatabase.partyDao().allParties();
    }

    public Party createParty(String name)
    {
        Party party = new Party();
        party.setCreated(new Date());
        party.setName(name);
        long newPartyId = partyDatabase.partyDao().createParty(party);

        //Hope room auto-inserts id...
        party.setId((int)newPartyId);
        return party;
    }

    public void deleteParty(final Party party)
    {
        partyDatabase.partyDao().deleteParty(party);
    }

    public Party loadParty(int id)
    {
        return partyDatabase.partyDao().partyForId(id).get(0);
    }
}
