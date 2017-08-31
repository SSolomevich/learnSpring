package ru.solomevich.learnSpring.service;

import org.springframework.stereotype.Service;
import ru.solomevich.learnSpring.dao.ElementsDao;
import ru.solomevich.learnSpring.model.Elements;
import ru.solomevich.learnSpring.model.Equation;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by 15 on 29.08.2017.
 */
@Service
public class ElementsServiceImpl implements ElementsService{


    ElementsDao elementsDao;

    public void setElementsDao(ElementsDao elementsDao) {
        this.elementsDao = elementsDao;
    }

    @Override
    @Transactional
    public List<Elements> listElements() {
        return this.elementsDao.listElements();
    }

    @Override
    @Transactional
    public void addElement(Elements elements) {
        this.elementsDao.addElements(elements);
    }

    @Override
    @Transactional
    public void deleteElement(int id) {
        this.elementsDao.deleteElemets(id);
    }



}
