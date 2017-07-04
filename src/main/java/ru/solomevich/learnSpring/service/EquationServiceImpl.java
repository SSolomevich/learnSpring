package ru.solomevich.learnSpring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.solomevich.learnSpring.dao.EquationDao;
import ru.solomevich.learnSpring.model.Equation;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by 15 on 24.06.2017.
 */
@Service
public class EquationServiceImpl implements EquationService {




    EquationDao equationDao;

    public void setEquationDao(EquationDao equationDao) {
        this.equationDao = equationDao;
    }


    @Override
    @Transactional
    public List<Equation> listEquation() {
        System.out.println("Сервис работает!!!!!!!!!!!!!!");
        return this.equationDao.listEq();
    }
    @Override
    @Transactional
    public void addEquation(Equation equation)
    {
        this.equationDao.addEq(equation);
    }

    @Override
    public String equalizeEquation (String str)
    {
        String[] world = str.split("=");
        return world[0];
    }

}

