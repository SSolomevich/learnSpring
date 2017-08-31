package ru.solomevich.learnSpring.service;

import ru.solomevich.learnSpring.model.Elements;
import ru.solomevich.learnSpring.model.Equation;

import java.util.List;

/**
 * Created by 15 on 24.06.2017.
 */
public interface EquationService {
    List<Equation> listEquation();
    void addEquation(Equation equation);
    void deleteEquation(int id);
    Equation equalizeEquation (Equation equation);
    Integer calculation(Equation equation, List <Elements> list);

}
