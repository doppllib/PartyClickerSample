package com.kgalligan.partyclicker.presenter;

import javax.inject.Singleton;

import dagger.Component;

/**
 * Created by kgalligan on 4/23/17.
 */

@Singleton
@Component(modules = {AppModule.class})
public interface DaggerComponent
{
    void inject(PartyListPresenter presenter);
    void inject(PartyPresenter presenter);
}
