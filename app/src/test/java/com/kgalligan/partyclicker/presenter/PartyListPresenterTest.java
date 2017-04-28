package com.kgalligan.partyclicker.presenter;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.data.Person;
import com.kgalligan.partyclicker.test.DaggerTestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextModule;

import org.junit.Before;
import org.junit.Test;
import org.mockito.ArgumentCaptor;
import org.mockito.Mockito;


import java.util.List;

import javax.inject.Inject;


import static org.junit.Assert.*;
import static org.mockito.Matchers.any;
import static org.mockito.Matchers.booleanThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;

/**
 * Created by kgalligan on 4/27/17.
 */
public class PartyListPresenterTest
{
    @Inject
    DataProvider dataProvider;
    private PartyListPresenter partyListPresenter;
    private PartyListPresenter.UiInterface uiInterface;

    @Before
    public void setUp() throws Exception
    {
        TestNoContextComponent testComponent = DaggerTestNoContextComponent.builder()
                .testNoContextModule(new TestNoContextModule())
                .build();

        testComponent.inject(this);

        partyListPresenter = new PartyListPresenter();
        testComponent.inject(partyListPresenter);
        uiInterface = mock(PartyListPresenter.UiInterface.class);
        partyListPresenter.applyUiInterface(uiInterface);
    }

    @Test
    public void callRefreshPartyList() throws Exception
    {
        partyListPresenter.callRefreshPartyList();
        verify(uiInterface).refreshPartyList(any(List.class));
    }

    @Test
    public void callParty() throws Exception
    {
        Party hello = dataProvider.createParty("hello");
        partyListPresenter.callParty(hello.id);
        verify(uiInterface).showParty(hello);
    }

    @Test
    public void createParty() throws Exception
    {
        final ArgumentCaptor<Party> captor = ArgumentCaptor.forClass(Party.class);
        dataProvider.createParty("not a stone groove");
        partyListPresenter.createParty("a stone groove");
        verify(uiInterface).showParty(captor.capture());

        assertEquals(captor.getValue().name, "a stone groove");
    }

    @Test
    public void deleteParty() throws Exception
    {
        dataProvider.createParty("a");
        dataProvider.createParty("b");
        Party party = dataProvider.createParty("c");
        dataProvider.createParty("d");

        partyListPresenter.deleteParty(party.id);

        assertEquals(3, dataProvider.allParties().size());
    }

    @Test
    public void countPeople() throws Exception
    {
        dataProvider.createParty("a");
        dataProvider.createParty("b");
        Party party = dataProvider.createParty("c");
        dataProvider.createParty("d");

        dataProvider.addPerson(party, true);
        dataProvider.addPerson(party, true);
        dataProvider.addPerson(party, true);
        dataProvider.addPerson(party, false);
        dataProvider.addPerson(party, true);

        int countPeople = partyListPresenter.countPeople(party);

        assertEquals(3, countPeople);
    }

    @Test
    public void allPeople() throws Exception
    {
        Party party = dataProvider.createParty("on the patio");

        dataProvider.addPerson(party, true);
        dataProvider.addPerson(party, true);
        dataProvider.addPerson(party, true);
        dataProvider.addPerson(party, false);
        dataProvider.addPerson(party, true);

        List<Person> personList = partyListPresenter.allPeople(party);

        List<Person> memPersonLIst = dataProvider.allPeopleForParty(party);

        for(Person person : personList)
        {
            boolean found = true;
            for(Person memPerson : memPersonLIst)
            {
                if(person.id == memPerson.id)
                {
                    found = true;
                    break;
                }
            }
            assertTrue(found);
        }
    }

}