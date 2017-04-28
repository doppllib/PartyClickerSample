package com.kgalligan.partyclicker.data;
import com.kgalligan.partyclicker.test.DaggerTestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextModule;

import org.junit.Before;
import org.junit.Test;


import javax.inject.Inject;


import static org.junit.Assert.*;

/**
 * Created by kgalligan on 4/27/17.
 */
public class ModPersonTaskTest
{
    @Inject
    DataProvider dataProvider;

    @Before
    public void setUp() throws Exception
    {
        TestNoContextComponent testComponent = DaggerTestNoContextComponent.builder()
                .testNoContextModule(new TestNoContextModule())
                .build();

        testComponent.inject(this);
    }

    @Test
    public void run()
    {
        Party party = dataProvider.createParty("asdf");
        new ModPersonTask(party, true, dataProvider).run();
        new ModPersonTask(party, true, dataProvider).run();
        new ModPersonTask(party, true, dataProvider).run();
        new ModPersonTask(party, false, dataProvider).run();
        new ModPersonTask(party, true, dataProvider).run();

        assertEquals(dataProvider.countCurrentParty(party.id), 3);
    }
}