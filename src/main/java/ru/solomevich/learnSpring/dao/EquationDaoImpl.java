package ru.solomevich.learnSpring.dao;


import ru.solomevich.learnSpring.model.Equation;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


import java.util.List;

/**
 * Created by 15 on 24.06.2017.
 */
@Repository
public class EquationDaoImpl implements EquationDao {
//
//    public static List<Equation> list = Arrays.asList(
//            new Equation(),
//            new Equation(),
//            new Equation())
////            new Equation(4, "x+y+z"),
////            new Equation(5, "x-18y"))
//            ;






    private SessionFactory sessionFactory;


    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addEq (Equation equation) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(equation);
//    sessionFactory.getCurrentSession().save(equation);
        }


    @Override
    @SuppressWarnings("unchecked")
    public List<Equation> listEq() {


//        return sessionFactory.getCurrentSession().createQuery("From Equation")
//                .list();


        Session session = this.sessionFactory.getCurrentSession();
        List<Equation> listUser = session.createQuery("from Equation").list();


        return listUser;
    }

    @Override
    public void deleteEq(int id)
    {
        Session session = this.sessionFactory.getCurrentSession();
        Equation equation = (Equation) session.load(Equation.class, new Integer(id));
        if (equation!=null)
            session.delete(equation);
    }
}


