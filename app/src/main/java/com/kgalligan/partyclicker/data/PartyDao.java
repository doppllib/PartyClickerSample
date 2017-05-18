package com.kgalligan.partyclicker.data;
import android.arch.persistence.room.Dao;
import android.arch.persistence.room.Delete;
import android.arch.persistence.room.Insert;
import android.arch.persistence.room.Query;

import java.util.List;

/**
 * Pretty sure interfaces don't need access identifiers https://developer.android.com/topic/libraries/architecture/room.html
 *
 * Created by kgalligan on 5/18/17.
 */
@Dao
public interface PartyDao
{
    @Insert
    long createParty(Party party);

    @Delete
    void deleteParty(Party party);

    @Insert
    void createPerson(Person person);

    @Query("select * from party order by created desc")
    List<Party> allParties();

    @Query("select * from person where party_id = :partyId")
    List<Person> allPeopleForParty(int partyId);

    @Query("select * from party where id = :id")
    List<Party> partyForId(int id);
}
