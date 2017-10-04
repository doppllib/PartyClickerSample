package com.kgalligan.partyclicker.data;
import android.arch.persistence.room.Dao;
import android.arch.persistence.room.Delete;
import android.arch.persistence.room.Insert;
import android.arch.persistence.room.Query;

import java.util.List;

import io.reactivex.Flowable;

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
    Flowable<List<Party>> allParties();

    @Query("select * from person where party_id = :partyId")
    Flowable<List<Person>> allPeopleForParty(int partyId);

    @Query("SELECT count(id) from person where party_id = :partyId")
    int countPeopleAtParty(int partyId);

    @Query("select * from party where id = :id")
    Party partyForId(long id);
}
