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
// Получаем массив из уравнения: нулевой элемент - первая часть уравнения, первый - вторая часть
        String[] world = equation.getEquation().split("=");
// Проверяем на правильность уравнение (обе части не равны нулю и только одно равно)
        if (world.length!=2||world[0].equals("")||world[1].equals("")) {
            equation.setEquation("УРАВНЕНИЕ ВВЕДЕНО НЕВЕРНО!");
            return equation;
        }
// Из первой части уранения убираем плюсы
        String[] world1 = world[0].split("[+]");
        String s = "";
        for (int i=0;i<world1.length;i++)
        {
            s = s+world1[i];
        }
//  Создал массив для всех символов
        char [] symbolsCharArray = s.toCharArray ();
//        массив перевел для дальнейшего редактирования в линкед лист
        LinkedList <String> symbolsList = new LinkedList<String>();
        for (int a=0; a<symbolsCharArray.length; a++){
            symbolsList.add(String.valueOf(symbolsCharArray[a]));
        }
// Сначала все символы в скобках добавляем в конец массива столько раз, какой коэффициент указан после скобок
        for (int a=0; a<symbolsList.size();a++){

            if (symbolsList.get(a).equals("(")){
                int b = a+3;
                while (!symbolsList.get(b).equals(")")){
                b++;
                }
                for (int c=0; c<Integer.parseInt(symbolsList.get(b+1));c++){
                    for (int d=a+1; d<b;d++) {
                        symbolsList.add(symbolsList.get(d));
                    }
                }
            }
        }
//        Затем удаляем скобки, всё что в скобках и коэффициент за скобками
        for (int a=0; a<symbolsList.size();a++){
            if (symbolsList.get(a).equals("(")){
                while (!symbolsList.get(a).equals(")")){
                    symbolsList.remove(a);
                }
                symbolsList.remove(a);
                symbolsList.remove(a);
            }
        }
        System.out.println(symbolsList);
        String s2="";
        for (int d=0;d<symbolsList.size();d++){
            s2=s2+symbolsList.get(d);
        }
// Создал массив всех симвомов
        char [] elementsCharArray = s2.toCharArray ();

        // создаем map для хранения элементов и их количества
        Map<String,Integer> elements = new TreeMap<String, Integer>();

//        elements.put(String.valueOf(elementsCharArray[0]),0);
//        Set<Map.Entry<String, Integer>> set = elements.entrySet();


        int count = 0;
        for (int j = 0; j<elementsCharArray.length;j++)
        {
            for (int i = 0; i<elementsCharArray.length;i++){
                if (elementsCharArray[j]==elementsCharArray[i]&&Character.isUpperCase(elementsCharArray[i])){

                    if (i<elementsCharArray.length-1) {
                        if (Character.isUpperCase(elementsCharArray[i + 1])) {
                            if (j<elementsCharArray.length-1&&Character.isUpperCase(elementsCharArray[j + 1])) {
                                count++;
                                elements.put(String.valueOf(elementsCharArray[j]), count);
                            }
                        }
                        else if (elementsCharArray[i + 1] >= '0' && elementsCharArray[i + 1] <= '9') {
                            count = count + Character.digit(elementsCharArray[i+1], 10);
                            elements.put(String.valueOf(elementsCharArray[j]), count);
                        }
                        else if (Character.isLowerCase(elementsCharArray[i+1])){
                            if (elementsCharArray[j+1]==elementsCharArray[i+1]&&i<elementsCharArray.length-2){
                                if (Character.isUpperCase(elementsCharArray[i + 2])) {
                                    count++;
                                    elements.put(String.valueOf(elementsCharArray[j])+String.valueOf(elementsCharArray[j+1]), count);
                                }
                                else if (elementsCharArray[i + 2] >= '0' && elementsCharArray[i + 2] <= '9') {
                                    count = count + Character.digit(elementsCharArray[i+2], 10);
                                    elements.put(String.valueOf(elementsCharArray[j])+String.valueOf(elementsCharArray[j+1]), count);
                                }
                            }
                            else if (elementsCharArray[j+1]==elementsCharArray[i+1]){
                                count++;
                                elements.put(String.valueOf(elementsCharArray[j])+String.valueOf(elementsCharArray[j+1]), count);
                            }
                        }
                    }
                    else{
                        count++;
                        elements.put(String.valueOf(elementsCharArray[j]), count);
                    }
                }
            }
            count =0;
        }

//            if (Character.isUpperCase(elementsCharArray[j])) {
//                elements.put(String.valueOf(elementsCharArray[j]), count);
//            }
//
//
//            else
//                if (Character.isLowerCase(elementsCharArray[j])){
//                elements.remove(String.valueOf(elementsCharArray[j-1]));
//                elements.put(String.valueOf(elementsCharArray[j-1])+String.valueOf(elementsCharArray[j]),count);
//            }
////
////
////
//            else
//                if (elementsCharArray[j]>='0' && elementsCharArray[j]<='9') {
//                if (elementsCharArray[j - 1] != ')') {
//
//                    if (Character.isUpperCase(elementsCharArray[j-1])) {
////                        count=count+Character.digit(elementsCharArray[j], 10);
//
//
//                        Set<Map.Entry<String, Integer>> set2 = elements.entrySet();
//                        for (Map.Entry<String, Integer> m : set2) {
//                           if (m.getKey().equalsIgnoreCase(String.valueOf(elementsCharArray[j-1]))) ;
//                            elements.put(String.valueOf(elementsCharArray[j-1]), m.getValue()+Character.digit(elementsCharArray[j], 10));
//                        }
//
//
////                        elements.put(String.valueOf(elementsCharArray[j-1]), count);
//
//                    }
//
//                    else if (Character.isLowerCase(elementsCharArray[j-1])){
//                        elements.remove(String.valueOf(elementsCharArray[j-2]));
//                        count=count+Character.digit(elementsCharArray[j], 10);
//                        elements.put(String.valueOf(elementsCharArray[j-2])+String.valueOf(elementsCharArray[j-1]),count);
//                    }
//
//
//
////                    elements.remove(String.valueOf(elementsCharArray[j - 1]));
////                    elements.put(String.valueOf(elementsCharArray[j - 1]), count  + Character.digit(elementsCharArray[j], 10));
//                }
//                else {
////                    for (int i = j-2; i<)
//                    int counter = j - 2;
//                        while (elementsCharArray[counter] != '('){
////                            elements.remove(String.valueOf(elementsCharArray[counter]));
//                            elements.put(String.valueOf(elementsCharArray[counter]), count  + Character.digit(elementsCharArray[j], 10));
//                            counter=counter-1;
//                        }
//
//                }
//            }

        Set<Map.Entry<String, Integer>> set2 = elements.entrySet();
        System.out.println(s);
        System.out.println(s2);

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

