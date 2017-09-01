<%--
  Created by IntelliJ IDEA.
  User: 15
  Date: 28.08.2017
  Time: 22:53
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

            color: black; /* Цвет текста */
            border-spacing: 0; /* Расстояние между ячейками */
            border-collapse: collapse; /* Убираем двойные границы между ячейками */
            /*border-color: green;*/
            background: white; /* Цвет фона таблицы */
            border: 2px solid green; /* Рамка вокруг таблицы */
        }
        td {

            padding: 3px; /* Поля вокруг текста */
            border: 2px solid green;
            text-align: left;
            font-size: 16pt;
        }
        p {
            text-align: left;
            font-size: 16pt;
        }

    </style>
</head>
<body>
<h1><c:out value="${element.element} "/></h1>
<table >
    <tr><td>Название элемента</td><td><c:out value="${element.name} "/></td></tr>
    <tr><td>Атомный номер</td><td><c:out value="${element.atomicNumber} "/></td></tr>
    <tr><td>Атомная масса</td><td><c:out value="${element.weight} "/></td></tr>
    <tr><td>Класс</td><td><c:out value="${element.clas} "/></td></tr>
    <tr><td>Цвет</td><td><c:out value="${element.color} "/></td></tr>
    <tr><td>Валентность (в соединениях)</td><td><c:out value="${element.valence} "/></td></tr>
    <tr><td>Степень окисления (в соединениях)</td><td><c:out value="${element.oxidationDegree} "/></td></tr>
    <tr><td>Электронная конфигурация</td><td><c:out value="${element.electronicConfiguration} "/></td></tr>
    <tr><td>Электроотрицательность</td><td><c:out value="${element.electronegativity} "/></td></tr>
    <tr><td>Температура кипения, град</td><td><c:out value="${element.boilingT} "/></td></tr>
    <tr><td>Температура плавления, град</td><td><c:out value="${element.meltingT} "/></td></tr>
</table>
<br>
<br>
<p>
<a href="${element.wiki}" target="_blank"  title="Перейти">
    Узнать больше об элементе из википедии (нужен доступ к интернету)</a>
</p>

</body>
</html>
