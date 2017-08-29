package ru.solomevich.learnSpring.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import ru.solomevich.learnSpring.model.Elements;
import ru.solomevich.learnSpring.model.Equation;

import java.util.List;

/**
 * Created by 15 on 29.08.2017.
 */
@Repository
public class ElementsDaoImpl implements ElementsDao {

    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Elements> listElements() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Elements> listElements = session.createQuery("from Elements").list();
        return listElements;
    }

    @Override
    public void addElements(Elements elements) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(elements);
    }

    @Override
    public void deleteElemets(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Elements elements = (Elements) session.load(Elements.class, new Integer(id));
        if (elements!=null)
            session.delete(elements);
    }
}
