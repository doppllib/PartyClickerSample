package com.kgalligan.partyclicker.test;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.data.Person;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * Created by kgalligan on 4/27/17.
 */

public class MemoryDataProvider implements DataProvider
{
    volatile int idCounter = 111;
    List<Party> parties = new ArrayList<>();

    public static class MemParty extends Party
    {
        List<Person> people = new ArrayList<>();
    }

    @Override
    public List<Party> allParties()
    {
        return parties;
    }

    @Override
    public Party loadParty(int id)
    {
        for(Party party : parties)
        {
            if(party.id == id)
                return party;
        }
        return null;
    }

    @Override
    public Party createParty(String name)
    {
        Party party = new MemParty();
        party.created = new Date();
        party.name = name;

        party.id = idCounter++;

        parties.add(party);

        return party;
    }

    @Override
    public void deleteParty(Party party)
    {
        Iterator<Party> iterator = parties.iterator();
        while(iterator.hasNext())
        {
            Party next = iterator.next();
            if(party.id == next.id)
            {
                iterator.remove();
                return;
            }
        }

        throw new RuntimeException("Party "+ party.id +" not found");
    }

    @Override
    public int countCurrentParty(int id)
    {
        MemParty party = (MemParty)loadParty(id);
        int sum = 0;
        for(Person person : party.people)
        {
            sum += person.val;
        }
        return sum;
    }

    @Override
    public List<Person> allPeopleForParty(Party party)
    {
        return ((MemParty)party).people;
    }

    @Override
    public void addPerson(Party party, boolean coming)
    {
        Person person = new Person();
        person.val = (short)(coming ? 1 : -1);
        person.recorded = new Date();
        person.id = idCounter++;
        ((MemParty)party).people.add(person);
    }
}
