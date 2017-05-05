package com.kgalligan.partyclicker.data;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;

import co.touchlab.squeaky.dao.Dao;
import co.touchlab.squeaky.db.sqlite.SQLiteDatabaseImpl;
import co.touchlab.squeaky.db.sqlite.SqueakyOpenHelper;
import co.touchlab.squeaky.stmt.Where;
import co.touchlab.squeaky.table.TableUtils;

/**
 * Created by kgalligan on 1/5/17.
 */

public class DatabaseHelper extends SqueakyOpenHelper implements DataProvider
{

    private static final String DATABASE_FILE_NAME = "db";
    private static final int    BASELINE           = 5;

    private static final int CURRENT_VERSION = BASELINE;

    // @reminder Ordering matters, create foreign key dependant classes later
    private final Class[] tableClasses = new Class[] {
            Party.class, Person.class
    };

    public DatabaseHelper(Context context)
    {
        super(context, DATABASE_FILE_NAME, null, CURRENT_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db)
    {
        try
        {
            TableUtils.createTables(new SQLiteDatabaseImpl(db), tableClasses);
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
    {
        try
        {
            TableUtils.dropTables(new SQLiteDatabaseImpl(db), true, tableClasses);
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
        onCreate(db);
    }

    @Override
    public void onOpen(SQLiteDatabase db)
    {
        super.onOpen(db);
        db.execSQL("PRAGMA foreign_keys=ON;");
    }

    /**
     * @param transaction .
     * @throws RuntimeException on {@link SQLException}
     */
    public void performTransactionOrThrowRuntime(Callable<Void> transaction)
    {
        SQLiteDatabase db = getWritableDatabase();
        try
        {
            db.beginTransaction();
            transaction.call();
            db.setTransactionSuccessful();
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            db.endTransaction();
        }
    }

    public Dao<Party> getPartyDao()
    {
        return getDao(Party.class);
    }

    public Dao<Person> getPersonDao()
    {
        return getDao(Person.class);
    }

    public int countCurrentParty(int partyId)
    {
        return (int)DatabaseUtils.longForQuery(getWritableDatabase(), "select sum(val) from person where party_id = ?", new String[]{Integer.toString(partyId)});
    }

    @Override
    public List<Person> allPeopleForParty(Party party)
    {
        try
        {
            Where<Person> where = new Where<>(getPersonDao());
            where.eq("party", party);
            return getPersonDao().query(where).orderBy("recorded").list();
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    public void addPerson(Party party, boolean coming)
    {
        try
        {
            Person person = new Person();
            person.party = party;
            person.recorded = new Date();
            person.val = (short)(coming ? 1 : -1);

            getPersonDao().create(person);
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    public List<Party> allParties()
    {
        try
        {
            return getPartyDao().queryForAll().orderBy("created desc").list();
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    public Party createParty(String name)
    {
        try
        {
            Party party = new Party();
            party.created = new Date();
            party.name = name;
            getPartyDao().create(party);

            return party;
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    public void deleteParty(final Party party)
    {
        performTransactionOrThrowRuntime(() ->
        {
            Where<Person> where = new Where<>(getPersonDao());
            where.eq("party", party);
            getPersonDao().delete(where);
            getPartyDao().delete(party);
            return null;
        });
    }

    public Party loadParty(int id)
    {
        try
        {
            return getPartyDao().queryForId(id);
        }
        catch(SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
}
