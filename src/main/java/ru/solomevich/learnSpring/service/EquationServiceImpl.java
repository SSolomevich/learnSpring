package ru.solomevich.learnSpring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.solomevich.learnSpring.dao.EquationDao;
import ru.solomevich.learnSpring.model.Equation;

import javax.transaction.Transactional;
import java.util.*;

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
    @Transactional
    public void deleteEquation(int id)
    {
        this.equationDao.deleteEq(id);
    }

    @Override
    public Equation equalizeEquation (Equation equation)
    {

        String[] world = equation.getEquation().split("=");

        if (world.length!=2||world[0].equals("")||world[1].equals("")) {
            equation.setEquation("УРАВНЕНИЕ ВВЕДЕНО НЕВЕРНО!");
            return equation;
        }

        String[] world1 = world[0].split("[+]");
        String s = "";
        for (int i=0;i<world1.length;i++)
        {
            s = s+world1[i];
        }
//        char [] elementsCharArray = world1[0].toCharArray ();
        char [] elementsCharArray = s.toCharArray ();
        // создаем map для хранения элементов и их количества
        Map<String,Integer> elements = new HashMap<String, Integer>();
        // добавляем первый элемент в map
        elements.put(String.valueOf(elementsCharArray[0]),0);
//        Set<Map.Entry<String, Integer>> set = elements.entrySet();


        int count = 0;
        for (int j = 0; j<elementsCharArray.length;j++)
        {
            for (int i = 0; i<elementsCharArray.length;i++)
            {

                if (elementsCharArray[j]==elementsCharArray[i])
                {
                    count++;
                }
            }
            if (Character.isUpperCase(elementsCharArray[j])) {
                elements.put(String.valueOf(elementsCharArray[j]), count);
            }
            else if (Character.isLowerCase(elementsCharArray[j])){
                elements.remove(String.valueOf(elementsCharArray[j-1]));
                elements.put(String.valueOf(elementsCharArray[j-1])+String.valueOf(elementsCharArray[j]),count);
            }
            else if (elementsCharArray[j]>='0' && elementsCharArray[j]<='9'){

                elements.remove(String.valueOf(elementsCharArray[j-1]));
                elements.put(String.valueOf(elementsCharArray[j-1]),count-1+Character.digit(elementsCharArray[j],10));
            }
            count =0;
        }
        Set<Map.Entry<String, Integer>> set2 = elements.entrySet();
        System.out.println(s);
        System.out.println("МАП НИЖЕ!");
        for (Map.Entry<String, Integer> me : set2) {
            System.out.print(me.getKey() + ": ");
            System.out.println(me.getValue());
        }
        String endEquation = "";




        equation.setEquation(endEquation);
        System.out.println(endEquation);

        return equation;
    }

}

