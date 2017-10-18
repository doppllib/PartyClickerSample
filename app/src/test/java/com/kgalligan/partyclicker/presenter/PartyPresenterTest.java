package com.kgalligan.partyclicker.presenter;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.test.DaggerTestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextModule;

import org.junit.Before;
import org.junit.Test;


import javax.inject.Inject;


import static org.junit.Assert.*;
import static org.mockito.Mockito.atLeastOnce;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;

/**
 * Created by kgalligan on 4/28/17.
 */
public class PartyPresenterTest
{
    @Inject
    DataProvider dataProvider;

    private PartyPresenter                 partyPresenter;
    private PartyPresenter.UiInterface uiInterface;
    private Party                          party;

    @Before
    public void setUp() throws Exception
    {
        TestNoContextComponent testComponent = DaggerTestNoContextComponent.builder()
                .testNoContextModule(new TestNoContextModule())
                .build();

        testComponent.inject(this);

        party = dataProvider.createParty("marty");

        partyPresenter = new PartyPresenter(party.getId());

        testComponent.inject(partyPresenter);

        uiInterface = mock(PartyPresenter.UiInterface.class);
        partyPresenter.wire(uiInterface);
    }

    @Test
    public void init() throws Exception
    {
        initMultiParty();

        assertEquals(party.getName(), partyPresenter.getParty().getName());

        verify(uiInterface).updateUi();
        verify(uiInterface).processing(false);
        verify(uiInterface).processing(true);
    }

    private void initMultiParty()
    {
        dataProvider.createParty("a");
        dataProvider.createParty("b");

    }

    @Test
    public void addPerson() throws Exception
    {
        partyPresenter.addPerson(uiInterface);
        partyPresenter.addPerson(uiInterface);
        partyPresenter.addPerson(uiInterface);

        Thread.sleep(1000);

        assertEquals(3, partyPresenter.getPartyCount());
        assertEquals(3, dataProvider.countCurrentParty(party.getId()));

        verify(uiInterface, atLeastOnce()).updateUi();
    }

    @Test
    public void removePerson() throws Exception
    {
        initPartyPeople();

        Thread.sleep(1000);

        assertEquals(2, partyPresenter.getPartyCount());
        assertEquals(2, dataProvider.countCurrentParty(party.getId()));

        verify(uiInterface, atLeastOnce()).updateUi();
    }

    @Test
    public void getPartyCount() throws Exception
    {
        initPartyPeople();

        Thread.sleep(1000);

        assertEquals(2, partyPresenter.getPartyCount());
    }

    private void initPartyPeople()
    {
        partyPresenter.addPerson(uiInterface);
        partyPresenter.addPerson(uiInterface);
        partyPresenter.addPerson(uiInterface);
        partyPresenter.removePerson(uiInterface);
        partyPresenter.removePerson(uiInterface);
        partyPresenter.addPerson(uiInterface);
    }

    @Test
    public void getParty() throws Exception
    {
        initMultiParty();

        assertEquals(party.getId(), partyPresenter.getParty().getId());
    }

}