package com.kgalligan.partyclicker.test;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.data.Person;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import io.reactivex.Flowable;
import io.reactivex.processors.BehaviorProcessor;

/**
 * Created by kgalligan on 4/27/17.
 */

public class MemoryDataProvider implements DataProvider
{
    volatile int idCounter = 111;
    BehaviorProcessor<List<Party>> partyProcessor = BehaviorProcessor.createDefault(new ArrayList<Party>());

    public static class MemParty extends Party
    {
        List<Person> people = new ArrayList<>();
    }

    @Override
    public Flowable<List<Party>> allParties()
    {
        return partyProcessor;
    }

    @Override
    public Party loadParty(int id)
    {
        //Will always return with a default
        List<Party> parties = partyProcessor.blockingFirst();
        for(Party party : parties)
        {
            if(party.getId() == id)
                return party;
        }
        return null;
    }

    @Override
    public Party createParty(String name)
    {

        Party party = new MemParty();
        party.setCreated(new Date());
        party.setName(name);

        party.setId(idCounter++);

        List<Party> parties = new ArrayList<>(partyProcessor.blockingFirst());
        parties.add(party);
        partyProcessor.onNext(parties);

        return party;
    }

    @Override
    public void deleteParty(Party party)
    {
        List<Party> parties = new ArrayList<>(partyProcessor.blockingFirst());

        boolean found = false;
        Iterator<Party> iterator = parties.iterator();
        while(iterator.hasNext())
        {
            Party next = iterator.next();
            if(party.getId() == next.getId())
            {
                iterator.remove();
                found = true;
                break;
            }
        }

        if(found)
        {
            partyProcessor.onNext(parties);
        }
        else
        {
            throw new RuntimeException("Party " + party.getId() + " not found");
        }
    }

    @Override
    public int countCurrentParty(int id)
    {
        MemParty party = (MemParty)loadParty(id);
        int sum = 0;
        for(Person person : party.people)
        {
            sum += person.getVal();
        }
        return sum;
    }

    @Override
    public Flowable<List<Person>> allPeopleForParty(Party party)
    {
        return Flowable.just(((MemParty)party).people);
    }

    @Override
    public void addPerson(Party party, boolean coming)
    {
        Person person = new Person();
        person.setVal((short)(coming ? 1 : -1));
        person.setRecorded(new Date());
        person.setId(idCounter++);
        ((MemParty)party).people.add(person);
    }
}
