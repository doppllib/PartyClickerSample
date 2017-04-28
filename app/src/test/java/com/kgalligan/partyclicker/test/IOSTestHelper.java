package com.kgalligan.partyclicker.test;
import com.kgalligan.partyclicker.data.DatabaseHelperTest;
import com.kgalligan.partyclicker.data.ModPersonTaskTest;
import com.kgalligan.partyclicker.data.PartyPresenterTest;
import com.kgalligan.partyclicker.presenter.PartyListPresenterTest;

import co.touchlab.doppl.testing.DopplJunitTestHelper;

/**
 * Created by kgalligan on 4/27/17.
 */

public class IOSTestHelper
{
    public static int runTests()
    {
        return DopplJunitTestHelper.run(new Class[]{
                DatabaseHelperTest.class, ModPersonTaskTest.class, PartyListPresenterTest.class,
                PartyPresenterTest.class
        });
    }
}
