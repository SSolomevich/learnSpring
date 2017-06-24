package ru.solomevich.learnSpring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.solomevich.learnSpring.dao.EquationDao;
import ru.solomevich.learnSpring.model.Equation;

import java.util.List;

/**
 * Created by 15 on 24.06.2017.
 */
@Service
public class EquationServiceImpl implements EquationService {

    @Autowired
    EquationDao equationDao;

    public List<Equation> listEquation() {
        System.out.println("Сервис работает!!!!!!!!!!!!!!");
        return equationDao.listEq();
    }
}

