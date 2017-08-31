package ru.solomevich.learnSpring.service;

import ru.solomevich.learnSpring.model.Elements;
import ru.solomevich.learnSpring.model.Equation;

import java.util.List;

/**
 * Created by 15 on 29.08.2017.
 */
public interface ElementsService {
    List<Elements> listElements();
    void addElement(Elements elements);
    void deleteElement(int id);

}
