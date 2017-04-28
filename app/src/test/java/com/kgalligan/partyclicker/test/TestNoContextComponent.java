package com.kgalligan.partyclicker.test;
import com.kgalligan.partyclicker.data.ModPersonTaskTest;
import com.kgalligan.partyclicker.presenter.PartyPresenter;
import com.kgalligan.partyclicker.presenter.PartyPresenterTest;
import com.kgalligan.partyclicker.presenter.PartyListPresenter;
import com.kgalligan.partyclicker.presenter.PartyListPresenterTest;

import javax.inject.Singleton;

import dagger.Component;

/**
 * Created by kgalligan on 4/27/17.
 */
@Singleton
@Component(modules = {TestNoContextModule.class})
public interface TestNoContextComponent
{
    void inject(ModPersonTaskTest taskTest);

    void inject(PartyListPresenterTest test);
    void inject(PartyListPresenter partyListPresenter);

    void inject(PartyPresenterTest presenter);
    void inject(PartyPresenter presenter);
}
