package ru.solomevich.learnSpring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import ru.solomevich.learnSpring.dao.EquationDao;
import ru.solomevich.learnSpring.model.Elements;
import ru.solomevich.learnSpring.model.Equation;

import javax.transaction.Transactional;
import java.io.PrintWriter;
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
//        System.out.println("Сервис работает!!!!!!!!!!!!!!");
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
    public Equation equalizeEquation (Equation equation) {
        List<String> list = new LinkedList<String>();
        String s = "";
// Получаем массив из уравнения: нулевой элемент - первая часть уравнения, первый - вторая часть
        String[] world = equation.getEquation().split("=");
        String[] compound = equation.getEquation().split("[=+]");
// Проверяем на правильность уравнение (обе части не равны нулю и только один знак "равно")
        if (world.length!=2||world[0].equals("")||world[1].equals("")) {
            equation.setEquation("УРАВНЕНИЕ ВВЕДЕНО НЕВЕРНО!");
            return equation;
        }
        if (equalizeLeftRight(world[0],world[1])){
            System.out.println("РАВНО!!!");
        }

        else {
// Считываем размер вводимой матрицы
            String[] world0 = world[0].split("[+]");
            String[] world1 = world[1].split("[+]");


            Map<String, Integer> map = helpEqualizeEquation(world[1]);

            int size1 = world0.length + world1.length;
            int size2 = map.size();

            List<String> list2 = new LinkedList<String>();
            Set<Map.Entry<String, Integer>> set = map.entrySet();
            for (Map.Entry<String, Integer> me : set) {
                list2.add(me.getKey());
            }
// Будем хранить матрицу в векторе, состоящем из
// векторов вещественных чисел
            double[][] matrix = new double[size1][size2];

// Добавляем в матрицу все значения из левой части уравнения
            for (int i = 0; i < world0.length; i++) {
                Map<String, Integer> map2 = helpEqualizeEquation(world0[i]);
                for (int j = 0; j < size2; j++) {
                    Set<Map.Entry<String, Integer>> set2 = map2.entrySet();


                    for (Map.Entry<String, Integer> me : set2) {
                        if (list2.get(j).equals(me.getKey())) {
                            matrix[i][j] = me.getValue();
                        }
//                        System.out.print(me.getKey() + ": ");
//                        System.out.println(me.getValue());

                    }
                }
            }


// Добавляем в матрицу все значения из правой части уравнения
//            for (int i = world0.length; i < size1-1; i++) {
            for (int i = 0; i < world1.length; i++) {
                Map<String, Integer> map3 = helpEqualizeEquation(world1[i]);
                for (int j = 0; j < size2; j++) {
                    Set<Map.Entry<String, Integer>> set3 = map3.entrySet();

                    for (Map.Entry<String, Integer> me2 : set3) {
                        if (list2.get(j).equals(me2.getKey())) {
                            matrix[i + world0.length][j] = - me2.getValue();
                        }
//                        System.out.print(me2.getKey() + ": ");
//                        System.out.println(me2.getValue());

                    }
                }
            }


            for (int i = 0; i < size1; i++) {
                for (int j = 0; j < size2; j++) {
                    System.out.print(matrix[i][j] + "|");
                }
                System.out.println();
            }
            System.out.println();
            System.out.println();
// Переделаем матрицу - поменяем столбцы и строки местами
            double[][] matrix2 = new double[size2][size1];
            for (int i = 0; i < size1; i++) {
                for (int j = 0; j < size2; j++) {
                    matrix2[j][i]=matrix[i][j];
                }
            }
            for (int i = 0; i < size2; i++) {
                for (int j = 0; j < size1; j++) {
                    System.out.print(matrix2[i][j] + "|");
                }
                System.out.println();
            }
//            __________________


//matrix2=cutMatrix(matrix2);
//            System.out.println("ПОСЛЕ ОБРЕЗКИ:");
//            for (int i = 0; i < matrix2.length; i++) {
//                for (int j = 0; j < matrix2[0].length; j++) {
//                    System.out.print(matrix2[i][j] + "|");
//                }
//                System.out.println();
//            }
double [] d = calculate(matrix2);
            double [] d2 = new double[d.length+1];
            int [] d3 = new int[d2.length];
           for (int r=0;r<d.length;r++) {
               System.out.println(d[r]);
               d2[r]=-d[r];
           }
           d2[d.length]=1;
           int ok=0;


            exitlabel:   for (int t=1;t<100;t++) {
                for (int r = 0; r < d2.length; r++) {
                 if (d2[r] % 1 > 0.04) {
                      ok=ok+1;
                  }
                }
                if (ok>0) {
                    for (int a = 0; a < d2.length; a++) {
                        d2[a] = d2[a] * (t + 1) / t;
                    }
                    ok=0;
                }
                else {
                    break exitlabel;
                }

           }
            System.out.println("D2:");
            for (int r=0;r<d2.length;r++) {
                System.out.println(d2[r]);

            }
           for (int r=0;r<d2.length;r++){
                d3[r]=(int)d2[r];
           }
            System.out.println("D3:");
            for (int r=0;r<d3.length;r++) {
                System.out.println(d3[r]);

            }
//            for (int r=0;r<d3.length;r++) {
//                System.out.println(d3[r]);
//                if(d3[r]==1){
//                    s=s+compound[r]
//                }
//                s=s+d3[r]+compound[r];
//
//            }
            for (int r=0;r<world0.length;r++) {
                if(d3[r]==1){
                    s=s+world0[r]+"+";
                }
                else {
                    s=s+d3[r]+world0[r]+"+";
                }
            }
            s=s.substring(0,s.length()-1);
            s=s+"=";
            for (int r=0;r<world1.length;r++) {
                if(d3[r+world0.length]==1){
                    s=s+world1[r]+"+";
                }
                else {
                    s=s+d3[r+world0.length]+world1[r]+"+";
                }
            }
            s=s.substring(0,s.length()-1);
            System.out.println("Ниже compound");
            for (int r=0;r<compound.length;r++) {
                System.out.println(compound[r]);
            }
            System.out.println("УРАВНЕНИЕ:"+s);

        }

equation.setEquation(s);
        return equation;
    }




    public Equation equalizeEquatio (Equation equation)
    {
        List<String> list = new LinkedList<String>();
// Получаем массив из уравнения: нулевой элемент - первая часть уравнения, первый - вторая часть
        String[] world = equation.getEquation().split("=");
// Проверяем на правильность уравнение (обе части не равны нулю и только одно равно)
        if (world.length!=2||world[0].equals("")||world[1].equals("")) {
            equation.setEquation("УРАВНЕНИЕ ВВЕДЕНО НЕВЕРНО!");
            return equation;
        }
        if (equalizeLeftRight(world[0],world[1])){
            System.out.println("РАВНО!!!");
        }
        else {

            System.out.println("Не Равно! Начинаю уравнивать!");

            String[] world0 = world[0].split("[+]");
            String[] world1 = world[1].split("[+]");
            String s = world[0];
            String s2 = world[1];
//            while (equalizeLeftRight(world[0], world[1])) {

            exitlabel:    for (int a = 0; a < world0.length + world1.length; a++) {

                for (int b = 0; b < 10; b++) {
                    for (int c = 0; c < b; c++) {
                        if (a < world0.length) {
                            world[0] = world[0] + world0[a];
                            world0[a] = b + 1 + world0[a];
                        } else {
                            world[1] = world[1] + world1[a - world0.length];
                            world1[a - world0.length] = b + 1 + world1[a - world0.length];
                        }
                    }
                    for (int i = a; i < world0.length + world1.length; i++) {

                        for (int j = 0; j < 10; j++) {
                            for (int k = 0; k < j; k++) {
                                if (i < world0.length) {
                                    world[0] = world[0] + world0[i];
                                } else {
                                    world[1] = world[1] + world1[i - world0.length];
                                }
                                if (equalizeLeftRight(world[0], world[1])) {
                                    System.out.println("Равно!Равно!Равно!Равно!Равно!");

                                    System.out.println(world[0] + "=" + world[1]);
                                    System.out.println(j + 1 + world0[0] + "=" + world[1]);
//                                String s = j+1+world0[0]+"="+world[1];
                                    if (i < world0.length) {
                                        world0[i] = j + 1 + world0[i];
                                    } else {
                                        world1[i - world0.length] = j + 1 + world1[i - world0.length];
                                    }
                                    String t = "";
                                    for (int o = 0; o < world0.length; o++) {
                                        t = t + world0[o] + "+";
                                    }
                                    t = t.substring(0, t.length() - 1);
                                    t = t + "=";
                                    for (int o = 0; o < world1.length; o++) {
                                        t = t + world1[o] + "+";
                                    }
                                    t = t.substring(0, t.length() - 1);
                                    list.add(t);
                                    break exitlabel;
                                }

                            }
                            world[0] = s;
                            world[1] = s2;
//                        if (equalizeLeftRight(world[0], world[1])){
//                            break;
//                        }
                        }
//                    if (equalizeLeftRight(world[0], world[1])){
//                        break;
//                    }
                    }
//                if (equalizeLeftRight(world[0], world[1])){
//                    break;
//                }
                }
            }
//            }

            }

//        System.out.println(world[0]);
        String endEquation = "";
        equation.setEquation(endEquation);
        if (list.size()!=0) {
            System.out.println("Готовое уравнение:  " + list.get(0));
        }
        return equation;
    }

    public Boolean equalizeLeftRight (String left, String right) {
        Map<String,Integer> elementsLeft = helpEqualizeEquation(left);
        Map<String,Integer> elementsRight = helpEqualizeEquation(right);

//        Set<Map.Entry<String, Integer>> set1 = elementsLeft.entrySet();
//        Set<Map.Entry<String, Integer>> set2 = elementsRight.entrySet();
//
//        for (Map.Entry<String, Integer> me : set2) {
//            System.out.print(me.getKey() + ": ");
//            System.out.println(me.getValue());
//        }
        if (elementsLeft.equals(elementsRight)) return true;
        else return false;
    }

    public Map<String,Integer> helpEqualizeEquation (String leftOrRight)
    {
        // Из первой части уранения убираем плюсы
        String[] world1 = leftOrRight.split("[+]");
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
//        System.out.println(symbolsList);
        String s2="";
        for (int d=0;d<symbolsList.size();d++){
            s2=s2+symbolsList.get(d);
        }
        s2=s2+"Q";
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
                            if (j<elementsCharArray.length-1) {
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

elements.remove("Q");
        Set<Map.Entry<String, Integer>> set2 = elements.entrySet();
//        System.out.println(s);
//        System.out.println(s2);

//        for (Map.Entry<String, Integer> me : set2) {
//            System.out.print(me.getKey() + ": ");
//            System.out.println(me.getValue());
//        }



        return elements;
    }


    public double[][] cutMatrix(double[][] array){
        boolean ok = false;
        boolean ok2 = false;

        List<Integer> listRemove = new LinkedList<Integer>();
        for (int i=0;i<array.length-1;i++){
            for (int j=0;j<array[0].length;j++){
            if ((array[i][j]==0&&array[i+1][j]!=0)||(array[i][j]!=0&&array[i+1][j]==0)){
                ok=true;
            }

            }

            if (ok==false){
                listRemove.add(i);
            }
            ok=false;

        }

        System.out.println("listREMOVE:");
        for (int k = 0; k < listRemove.size(); k++) {
            System.out.println(listRemove.get(k));
        }




        if(listRemove.size()==0){
            return array;
        }


        int m=0;
        double[][] array2 = new double[array.length-listRemove.size()][array[0].length];
        for (int i=0;i<array.length;i++) {
            for (int k = 0; k < listRemove.size(); k++) {
                if (i==listRemove.get(k))
                {
                    ok2=true;
                }
                if (ok2==false){
                    for (int j = 0; j < array[0].length; j++) {
                    array2[i-m][j]=array[i][j];
                    }
                }
                else {
                   m++;
                }
            }
            ok2=false;
        }
        return array2;
    }

    public double[][] cutMatrix2(double[][] array){

        int max = 0;
        int column = 0;
        int n=0;
        for (int i=0;i<array.length;i++){

            for (int j=0;j<array[0].length;j++){
                if (array[i][j]!=0){
                    n++;
                }
            }
            if (n>max){
                max=n;
                column=i;
            }
            n=0;
        }

        double[][] array2 = new double[array.length-1][array[0].length];
        int m = 0;
        for (int i=0;i<array.length;i++) {

                if (i!=column)
                {
                    for (int j = 0; j < array[0].length; j++) {
                        array2[i-m][j]=array[i][j];
                    }
                }
                else {
                    m=1;
                }
        }
        return array2;
    }


    public double[] calculate(double[][] array) throws IllegalArgumentException {
        if (array.length != array[0].length - 1) {
            array=cutMatrix(array);
//            throw new IllegalArgumentException("число уравнений должно быть равно количеству неизвестных");
        }
        System.out.println("После первой обрезки:");
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[0].length; j++) {
                System.out.print(array[i][j] + "|");
            }
            System.out.println();
        }
        while (array.length != array[0].length - 1){
            array = cutMatrix2(array);
        }
        System.out.println("После всех обрезок:");
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[0].length; j++) {
                System.out.print(array[i][j] + "|");
            }
            System.out.println();
        }

        int[] p = new int[array.length];
        for (int i = 0; i < p.length; i++) {
            p[i] = i;
        }

        //факторизация матрицы A
        for (int k = 0; k < array[0].length - 1; k++) {
            double max = 0;
            int numberRowForReplace = k;
            for (int j = k; j < array.length; j++) {
                if (Math.abs(array[j][k]) > max) {
                    numberRowForReplace = j;
                    max = Math.abs(array[j][k]);
                }
            }
            if (max == 0) {
                throw new IllegalArgumentException("матрица не должна быть вырожденной");
            }

            //меняем местами номера строк, которые будут переставлены
            int value = p[k];
            p[k] = p[numberRowForReplace];
            p[numberRowForReplace] = value;

            //переставляем соотвествующие строки
            double[] row = array[k];
            array[k] = array[numberRowForReplace];
            array[numberRowForReplace] = row;

            //прямая подстановка
            for (int i = k + 1; i < array.length; i++) {
                //делим элементы ниже главной диагонали на ведущий
                array[i][k] = array[i][k] / array[k][k];
                for (int j = k + 1; j < array.length; j++) {
                    //вычитаем элементы текущей k-строчки помноженные на коэффициент из элементов строчек ниже ее
                    array[i][j] = array[i][j] - array[i][k] * array[k][j];
                }
            }
        }

        // прямая подстановка
        // вычисление y системы Ly=Pb
        double[] y = new double[array.length];
        for (int i = 0; i < array.length; i++) {
            double value = 0;
            for (int j = 0; j < i; j++) {
                value += array[i][j] * y[j];
            }
            y[i] = array[i][array[0].length - 1] - value;
        }


        // обратная подстановка
        // вычисление x системы Ux=y

        double[] x = new double[array.length];
        for (int i = array.length - 1; i >= 0; i--) {
            double value = 0;
            for (int j = i + 1; j < array.length; j++) {
                value += array[i][j] * x[j];
            }
            x[i] = (y[i] - value) / array[i][i];
        }

        return x;
    }

//    ElementsService elementsService;
//
//    @Autowired(required = true)
//    @Qualifier(value = "elementsService")
//    public void setElementsService(ElementsService elementsService) {
//        this.elementsService = elementsService;
//    }

    public Integer calculation(Equation equation, List <Elements> list){
        ElementsServiceImpl elementsService = new ElementsServiceImpl();
        double molecularWeight=0;
       Map<String,Integer> map = helpEqualizeEquation(equation.getEquation());
        Set<Map.Entry<String, Integer>> set = map.entrySet();



//        for (Map.Entry<String, Integer> me : set) {
//            System.out.print(me.getKey() + ": ");
//            System.out.println(me.getValue());
////            map2.put(me.getKey(),me.getValue());
//        }
//



        for (int i=0;i<list.size();i++){
            System.out.println(list.get(i).getElement());
        }
       for (int i=0;i<list.size();i++){
           for (Map.Entry<String, Integer> me : set) {
             if (me.getKey().equals(list.get(i).getElement())){
                double  weight = list.get(i).getWeight();
                 molecularWeight=molecularWeight+weight*me.getValue();
             }
        }
       }
        int result=0;
        if (molecularWeight%1<0.5){
            result = (int)molecularWeight;
        }
        else result = (int)molecularWeight +1;


        System.out.println("molecularWeight"+molecularWeight);
        return result;
    }

}