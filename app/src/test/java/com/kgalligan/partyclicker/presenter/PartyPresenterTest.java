package com.kgalligan.partyclicker.presenter;
import com.kgalligan.partyclicker.data.DataProvider;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.presenter.PartyListPresenter;
import com.kgalligan.partyclicker.presenter.PartyPresenter;
import com.kgalligan.partyclicker.test.DaggerTestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextModule;

import org.junit.Before;
import org.junit.Test;


import javax.inject.Inject;


import static org.junit.Assert.*;
import static org.mockito.Mockito.atLeastOnce;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
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

        partyPresenter = new PartyPresenter(party.id);

        testComponent.inject(partyPresenter);

        uiInterface = mock(PartyPresenter.UiInterface.class);
        partyPresenter.applyUiInterface(uiInterface);
    }

    @Test
    public void init() throws Exception
    {
        initMultiParty();

        assertEquals(party.id, partyPresenter.getParty().id);

        verify(uiInterface).updateUi();
        verify(uiInterface).processing(false);
        verify(uiInterface).processing(true);
    }

    private void initMultiParty()
    {
        dataProvider.createParty("a");
        dataProvider.createParty("b");

        partyPresenter.init();
    }

    @Test
    public void addPerson() throws Exception
    {
        partyPresenter.init();

        partyPresenter.addPerson();
        partyPresenter.addPerson();
        partyPresenter.addPerson();

        Thread.sleep(1000);

        assertEquals(3, partyPresenter.getPartyCount());
        assertEquals(3, dataProvider.countCurrentParty(party.id));

        verify(uiInterface, atLeastOnce()).updateUi();
    }

    @Test
    public void removePerson() throws Exception
    {
        initPartyPeople();

        Thread.sleep(1000);

        assertEquals(2, partyPresenter.getPartyCount());
        assertEquals(2, dataProvider.countCurrentParty(party.id));

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
        partyPresenter.init();

        partyPresenter.addPerson();
        partyPresenter.addPerson();
        partyPresenter.addPerson();
        partyPresenter.removePerson();
        partyPresenter.removePerson();
        partyPresenter.addPerson();
    }

    @Test
    public void getParty() throws Exception
    {
        initMultiParty();

        assertEquals(party.id, partyPresenter.getParty().id);
    }

}