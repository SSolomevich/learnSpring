package ru.solomevich.learnSpring.dao;

import ru.solomevich.learnSpring.model.Equation;

import java.util.List;

/**
 * Created by 15 on 24.06.2017.
 */
public interface EquationDao {
    public List<Equation> listEq();
}
