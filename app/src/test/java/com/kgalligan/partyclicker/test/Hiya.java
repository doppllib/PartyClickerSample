package com.kgalligan.partyclicker.test;
import co.touchlab.squeaky.field.DatabaseField;
import co.touchlab.squeaky.table.DatabaseTable;

/**
 * Created by kgalligan on 3/21/17.
 */
@DatabaseTable
public class Hiya
{
    @DatabaseField(generatedId = true)
    public int id;

    @DatabaseField
    public String asdf;
}
