package com.kgalligan.partyclicker.data;
import android.app.Application;
import android.arch.persistence.room.Room;

import com.kgalligan.partyclicker.test.DaggerTestComponent;
import com.kgalligan.partyclicker.test.TestAppModule;
import com.kgalligan.partyclicker.test.TestComponent;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.inject.Inject;

import co.touchlab.doppl.testing.DopplContextDelegateTestRunner;


import static org.junit.Assert.*;

/**
 * Created by kgalligan on 4/27/17.
 */
@RunWith(DopplContextDelegateTestRunner.class)
public class DatabaseHelperTest
{
    @Inject
    PartyDatabase partyDatabase;

    DatabaseHelper databaseHelper;
    private Party party;

    @Before
    public void setUp() throws Exception
    {
        TestComponent testComponent = DaggerTestComponent.builder()
                .testAppModule(new TestAppModule())
                .build();

        testComponent.inject(this);

        databaseHelper = new DatabaseHelper(partyDatabase);
        party = databaseHelper.createParty("Hello test");
    }

    @Test
    public void countCurrentParty() throws Exception
    {
        assertEquals(0, databaseHelper.countCurrentParty(party.getId()));

        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, true);

        assertEquals(3, databaseHelper.countCurrentParty(party.getId()));

        databaseHelper.addPerson(party, false);

        assertEquals(2, databaseHelper.countCurrentParty(party.getId()));

        databaseHelper.addPerson(party, true);

        assertEquals(3, databaseHelper.countCurrentParty(party.getId()));
    }

    @Test
    public void allPeopleForParty() throws Exception
    {
        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, false);
        databaseHelper.addPerson(party, true);

        List<Person> people = databaseHelper.allPeopleForParty(party);

        assertEquals(5, people.size());
        Set<Integer> allIds = new HashSet<>();
        for(Person person : people)
        {
            allIds.add(person.getId());
        }

        assertEquals(5, allIds.size());
    }

    @Test
    public void addPerson() throws Exception
    {
        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, true);
        databaseHelper.addPerson(party, false);
        databaseHelper.addPerson(party, true);

        assertEquals(5, databaseHelper.allPeopleForParty(party).size());
        assertEquals(3, databaseHelper.countCurrentParty(party.getId()));
    }

    @Test
    public void allParties() throws Exception
    {
        assertEquals(1, databaseHelper.allParties().size());
        databaseHelper.createParty("asdf");
        databaseHelper.createParty("qwert");
        assertEquals(3, databaseHelper.allParties().size());
    }

    @Test
    public void createParty() throws Exception
    {
        databaseHelper.createParty("asdf");
        List<Party> parties = databaseHelper.allParties();
        assertEquals(2, parties.size());
        for(Party p : parties)
        {
            assertTrue(p.getName().equals("asdf") || p.getName().equals("Hello test"));
        }
    }

    @Test
    public void deleteParty() throws Exception
    {
        databaseHelper.createParty("asdf");
        List<Party> parties = databaseHelper.allParties();
        assertEquals(2, parties.size());

        int deleteCount = 0;
        for(Party p : parties)
        {
            if(!p.getName().equals("asdf"))
            {
                databaseHelper.deleteParty(p);
                deleteCount++;
            }
        }

        assertEquals(1, deleteCount);

        List<Party> laterParties = databaseHelper.allParties();
        assertEquals(1, laterParties.size());
        assertEquals("asdf", laterParties.get(0).getName());
    }

    @Test
    public void loadParty() throws Exception
    {
        Party jjjjjjj = databaseHelper.createParty("jjjjjjj");
        Party party = databaseHelper.loadParty(jjjjjjj.getId());
        assertEquals(party.getName(), "jjjjjjj");
        assertEquals(party.getName(), jjjjjjj.getName());
    }

}