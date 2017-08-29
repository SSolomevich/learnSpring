<%--
  Created by IntelliJ IDEA.
  User: 15
  Date: 23.06.2017
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>Spring</title>
    <style type="text/css">




          table {
     /*width: 80%;*/
        color: black; /* Цвет текста */
        border-spacing: 0; /* Расстояние между ячейками */
        border-collapse: collapse; /* Убираем двойные границы между ячейками */
        background: white; /* Цвет фона таблицы */
        border: 1px solid #000; /* Рамка вокруг таблицы */
        }
        th {
            background: white; /* Цвет фона ячеек */
            padding: 0; /* Поля вокруг текста */
            border: 1px solid white;
            font-size: 24pt;
        }
        td {
            width: 0em;
            padding: 0; /* Поля вокруг текста */
            border: 1px solid white;
            text-align: center;
            font-size: 16pt;

        }

        button {
            display: inline-block;
            width: 17em;
            height: 17em;
            line-height: 2em;
            vertical-align: middle;

            user-select: none;
            color: rgb(0,0,0);
            outline: none;
            border: 1px solid rgba(0,0,0,.4);
            border-top-color: rgba(0,0,0,.3);
            border-radius: 2px;
            background: linear-gradient(rgb(255,255,255), rgb(240,240,240));
            box-shadow:
                    0 0 3px rgba(0,0,0,0) inset,
                    0 1px 1px 1px rgba(255,255,255,.2),
                    0 -1px 1px 1px rgba(0,0,0,0);
            transition: .2s ease-in-out;
        }
        button:hover:not(:active) {
            box-shadow:
                    0 0 3px rgba(0,0,0,0) inset,
                    0 1px 1px 1px rgba(0,255,255,.5),
                    0 -1px 1px 1px rgba(0,255,255,.5);
        }
        button:active {
            background: linear-gradient(rgb(250,250,250), rgb(235,235,235));
            box-shadow:
                    0 0 3px rgba(0,0,0,.5) inset,
                    0 1px 1px 1px rgba(255,255,255,.4),
                    0 -1px 1px 1px rgba(0,0,0,.1);
        }


        p.one {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: normal;
            font-size: 9pt;
            text-align: left;
            line-height: 50%;
            margin-top: 0.2em; /* Отступ сверху */
            margin-bottom: 0.1em; /* Отступ снизу */
            margin-left: -0.4em;
        }
        p.two {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: 900;
            font-size: 17pt;;
            text-align: center;
            line-height: 100%;
            margin-top: 0.1em; /* Отступ сверху */
            margin-bottom: 0.4em; /* Отступ снизу */

        }
        p.three {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: normal;
            font-size: 14pt;
            text-align: center;
            line-height: 80%;
            color:red;
            margin-top: 0.2em; /* Отступ сверху */
            margin-bottom: 0.3em; /* Отступ снизу */

        }
        p.fohr {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: normal;
            font-size: 14pt;
            text-align: center;
            line-height: 80%;
            color:blue;
            margin-top: 0.2em; /* Отступ сверху */
            margin-bottom: 0.3em; /* Отступ снизу */

        }
        td.white{
            border-color: white black;
        }
    </style>
</head>
<body>







    <%--<form:form  action="equalize" >--%>
    <%--<table>--%>
    <%--<tr style="background-color: #F0F0F0">--%>
        <%--<td class="td" > Введите уравнение реакции без коэффициентов </td>--%>

    <%--</tr>--%>
        <%--<tr>--%>
            <%--<td class="i" > <input type="text" name="equation" maxlength="50"  size="14"  class="i2"/></td>--%>
        <%--</tr>--%>
    <%--<tr>--%>

        <%--<td class="td2"> <input type="submit" name="success" value="Ок" class="input"> </td>--%>
    <%--</tr>--%>
    <%--</table>--%>
    <%--</form:form>--%>


<%--<br>--%>

<%--<div> Решение:</div>--%>
      <%----%>
<%--<div> ${lastEquation.equation}--%>
<%--</div>--%>


<%--<br>--%>
    <%--<br>--%>
    <%--<br>--%>


        <%--<td class="td2"> <input type="submit" name="success" value="Уравнять химическое уравнение" class="input"> </td>--%>
        <%--<input type="image" src="c:/Java/images/t.png" width="100" alt="ОК">--%>
        <%--<input type="image" src="C:\Java\images\w.png" width="100" alt="ОК">--%>
        <%--<input type="image" src="c:/Java/images/q.png" width="100" alt="ОК">--%>
        <%--<input type="image" src="c:/Java/images/IdeaProjects/1.png" width="100" alt="ОК">--%>
        <%--<input type="image" src="c:/Java/images/1" width="100" alt="ОК">--%>
       <%--<button type="submit"  ><img src="c:/Java/images/Коутиньо.jpg" ></button>Уравнять химическое уравнение--%>
        <%--<input type="submit" value="Главная" class="button" />--%>
        <%--<button><img src="c:/Java/images/1.png" alt="Зонтик"--%>
                     <%--style="vertical-align: middle" width="100px" height="100px"> Кнопка с рисунком--%>
           <%--</button>--%>
        <%--<input type="image" src="https://img.tyt.by/i/by4/logo-rus-20121023.png" width="100" alt="ОК">--%>


        <table >


            <tr><td> <form:form  action="equalize1" ><button type="submit"><p class="two">Уравнять реакцию</p><p class="fohr ">(Demo-версия)</p></button> </form:form></td><td ></td><td><button type="button"><p class="two">Вычислить молекулярную массу</p><p class="three">(В разработке)</p></button></td></tr>
            <tr><td ></td><td><button type="button"><p class="two">Решение задач</p><p class="three">(В разработке)</p></button></td><td ></td></tr>
            <tr><td><form:form  action="tableMendeleev" ><button type="submit"><p class="two">Таблица Менделеева и свойства элементов</p><p class="three">(В разработке)</p></button></form:form></td><td ></td><td><button type="button"><p class="two">Другая полезная информация</p><p class="three">(В разработке)</p></button></td></tr>


        </table>






</body>
</html>