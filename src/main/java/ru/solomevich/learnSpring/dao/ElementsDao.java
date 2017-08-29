package ru.solomevich.learnSpring.dao;

import ru.solomevich.learnSpring.model.*;

import java.util.List;

/**
 * Created by 15 on 29.08.2017.
 */
public interface ElementsDao {
    List<Elements> listElements();
    void addElements(Elements elements);
    void deleteElemets(int id);
}
