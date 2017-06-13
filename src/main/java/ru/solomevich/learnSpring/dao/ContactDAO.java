package ru.solomevich.learnSpring.dao;

/**
 * Created by 15 on 13.06.2017.
 */
import ru.solomevich.learnSpring.domain.Contact;

import java.util.List;


public interface ContactDAO {

    public void addContact(Contact contact);

    public List<Contact> listContact();

    public void removeContact(Integer id);
}
