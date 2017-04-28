package com.kgalligan.partyclicker.data;
import java.util.List;

/**
 * Simple wrapper for data methods. Make testing simpler.
 *
 * Created by kgalligan on 4/26/17.
 */

public interface DataProvider
{

    List<Party> allParties();

    Party loadParty(int id);

    Party createParty(String name);

    void deleteParty(Party party);

    int countCurrentParty(int id);

    List<Person> allPeopleForParty(Party party);

    void addPerson(Party party, boolean coming);
}
