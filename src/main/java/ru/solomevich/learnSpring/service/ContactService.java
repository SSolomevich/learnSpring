package ru.solomevich.learnSpring.service;

import ru.solomevich.learnSpring.domain.Contact;

import java.util.List;

/**
 * Created by 15 on 13.06.2017.
 */
public interface ContactService {

    public void addContact(Contact contact);

    public List<Contact> listContact();

    public void removeContact(Integer id);
}
