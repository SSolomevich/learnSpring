<%--
  Created by IntelliJ IDEA.
  User: 15
  Date: 28.08.2017
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            /* width: 80%;  Ширина таблицы */
            color: black; /* Цвет текста */
            border-spacing: 0; /* Расстояние между ячейками */
            border-collapse: collapse; /* Убираем двойные границы между ячейками */
            background: white; /* Цвет фона таблицы */
            border: 1px solid #000; /* Рамка вокруг таблицы */
        }
        th {
            background: white; /* Цвет фона ячеек */
            padding: 0; /* Поля вокруг текста */
            border: 1px solid black;
            font-size: 24pt;
        }
        td {
            width: 3em;
            padding: 0; /* Поля вокруг текста */
            border: 1px solid black;
            text-align: center;
            font-size: 16pt;
        }

        button {
            display: inline-block;
            width: 5em;
            height: 5em;
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

        p {

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
            font-size: 20pt;;
            text-align: right;
            line-height: 50%;
            margin-top: 0.1em; /* Отступ сверху */
            margin-bottom: 0.4em; /* Отступ снизу */
            margin-right: -0.2em;
        }
        p.three {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: normal;
            font-size: 8pt;
            text-align: right;
            line-height: 80%;
            margin-top: 0.2em; /* Отступ сверху */
            margin-bottom: 0.3em; /* Отступ снизу */
            margin-right: -0.2em;
        }
        td.white{
            border-color: white black;
        }
    </style>
</head>
<body>
<form:form  action="elementDescription" >
<table >
    <tr><th colspan="18">Группы</th></tr>
    <tr><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td bordercolor="white">12</td><td bordercolor="white">13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td></tr>
    <tr><td><button type="submit" name="H"><p class="one">1</p><p class="two">H</p><p class="three">Водород</p><p class="three">1,00794</p></button></td><td colspan="16" class="white"></td><td><button type="submit"><p class="one">2</p><p class="two">He</p><p class="three">Гелий</p><p class="three">4,00260</p></button></td></tr>

    <tr><td><button type="submit"><p class="one">3</p><p class="two">Li</p><p class="three">Литий</p><p class="three">6,941</p> </button></td><td><button type="submit"><p class="one">4</p><p class="two">Be</p><p class="three">Бериллий</p><p class="three">9.01218</p></button></td></td><td colspan="10"></td><td><button type="submit"><p class="one">5</p><p class="two">B</p><p class="three">Бор</p><p class="three">10.811</p></button></td><td><button type="submit"><p class="one">6</p><p class="two">С</p><p class="three">Углерод</p><p class="three">12.011</p></button></td><td><button type="submit"><p class="one">7</p><p class="two">N</p><p class="three">Азот</p><p class="three">14.0067</p></button></td><td><button type="submit"><p class="one">8</p><p class="two">О</p><p class="three">Кислород</p><p class="three">15.9994</p></button></td><td><button type="submit"><p class="one">9</p><p class="two">F</p><p class="three">Фтор</p><p class="three">18.998403</p></button></td><td><button type="submit"><p class="one">10</p><p class="two">Ne</p><p class="three">Неон</p><p class="three">20.179</p></button></td></tr>

    <tr><td><button type="submit"><p class="one">11</p><p class="two">Na</p><p class="three">Натрий</p><p class="three">22.98977</p></button></td><td><button type="submit"><p class="one">12</p><p class="two">Mg</p><p class="three">Магний</p><p class="three">24.305</p></button></td></td><td colspan="10"></td><td><button type="submit"><p class="one">13</p><p class="two">Al</p><p class="three">Алюминий</p><p class="three">26.98154</p></button></td><td><button type="submit"><p class="one">14</p><p class="two">Si</p><p class="three">Кремний</p><p class="three">28.0855</p></button></td><td><button type="submit"><p class="one">7</p><p class="two">P</p><p class="three">Фосфор</p><p class="three">30.97376</p></button></td><td><button type="submit"><p class="one">16</p><p class="two">S</p><p class="three">Сера</p><p class="three">32.066</p></button></td><td><button type="submit"><p class="one">17</p><p class="two">Cl</p><p class="three">Хлор</p><p class="three">35.453</p></button></td><td><button type="submit"><p class="one">18</p><p class="two">Ar</p><p class="three">Аргон</p><p class="three">39.948</p></button></td></tr>



</table>
</form:form>
</body>
</body>
</html>
