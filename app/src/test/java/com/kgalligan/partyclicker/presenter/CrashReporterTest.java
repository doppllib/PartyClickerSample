package com.kgalligan.partyclicker.presenter;
import com.kgalligan.partyclicker.data.Party;
import com.kgalligan.partyclicker.test.DaggerTestNoContextComponent;
import com.kgalligan.partyclicker.test.MemoryDataProvider;
import com.kgalligan.partyclicker.test.TestNoContextComponent;
import com.kgalligan.partyclicker.test.TestNoContextModule;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import dagger.Module;

/**
 * Created by kgalligan on 5/2/17.
 */

public class CrashReporterTest
{
    private CrashReporter crashReporter;
    private PartyListPresenter presenter;

    @Before
    public void setUp() throws Exception
    {
        crashReporter = Mockito.mock(CrashReporter.class);
        TestNoContextComponent component = DaggerTestNoContextComponent.builder()
                .testNoContextModule(new TestNoContextModule(new MemoryDataProvider(){
                    @Override
                    public Party createParty(String name)
                    {
                        if(name.contains("Fyre"))
                            throw new RuntimeException("#dumpsterfyre");
                        else
                        {
                            return super.createParty(name);
                        }
                    }
                }, crashReporter))
                .build();

        presenter = new PartyListPresenter();
        component.inject(presenter);
    }

    @Test
    public void reportTest()
    {
        PartyListPresenter.UiInterface uiInterface = Mockito.mock(PartyListPresenter.UiInterface.class);
        presenter.createParty("Fyre Festival", uiInterface);
        Mockito.verify(crashReporter).report(Mockito.any(RuntimeException.class));
    }

    @Test
    public void logTest()
    {
        PartyListPresenter.UiInterface uiInterface = Mockito.mock(PartyListPresenter.UiInterface.class);
        presenter.createParty("Coachella", uiInterface);
        Mockito.verify(crashReporter).log(Mockito.any(String.class));
    }
}
