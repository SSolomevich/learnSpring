package ru.solomevich.learnSpring.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.solomevich.learnSpring.model.Equation;

import java.util.Arrays;
import java.util.List;

/**
 * Created by 15 on 24.06.2017.
 */
@Repository
public class EquationDaoImpl implements EquationDao {

//    public static List<Equation> list = Arrays.asList(
//            new Equation(1, "x+y"),
//            new Equation(2, "2x+y"),
//            new Equation(3, "x+3y"),
//            new Equation(4, "x+y+z"),
//            new Equation(5, "x-18y"));



//    public List<Equation> listEq()
//    {
//        System.out.println("Дао тоже работает!!!!!!!!!!!!!!");
//        return list;
//    }
//
//    public void addEq(Equation equation) {
//        list.add(equation);
//    }

    @Autowired
    private SessionFactory sessionFactory;

    public void addEq (Equation equation) {
    sessionFactory.getCurrentSession().save(equation);
        }

    @SuppressWarnings("unchecked")
    public List<Equation> listEq() {

        return sessionFactory.getCurrentSession().createQuery("from equation")
                .list();
    }



}


