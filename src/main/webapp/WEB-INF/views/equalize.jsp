<%--
  Created by IntelliJ IDEA.
  User: 15
  Date: 22.08.2017
  Time: 23:36
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
    <style type="text/css">
        .table
        {
            margin: 5% 20% 30% 20%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            color: #333;
            line-height: 2px;
            border: 3px;
        }
        .td1{
            font-family: "Times New Roman", sans-serif;
            font-size: 24px;
            text-align: center;

        }
        .tdEquation{
            font-family: "Times New Roman", sans-serif;
            font-size: 28px;
            text-align: center;
            color: red;

        }
        .inp{
            width: 600px; /* Ширина поля с учетом padding */
            height: 40px; /* Высота */
            font-size: 22px;
            color: blue;
        }
        .td2{
            font-family: "Times New Roman", sans-serif;
            font-size: 24px;
            text-align: center;
        }
    </style>
</head>
<body>

<form:form  action="equalize" >
<div class="table" >
    <table>
        <tr >
            <td class="td1" > Введите уравнение реакции без коэффициентов </td>
        </tr>
        <tr><td class="td2"> </td></tr>
        <tr>
            <td class="tdEquation" > <input type="text" name="equation" class="inp" maxlength="50"/></td>
        </tr>
        <tr><td class="td2"> </td></tr>
        <tr>
            <td class="td2"> <input type="submit" name="success" value="Уравнять" class="input"> </td>
        </tr>
    </table>
</div>
</form:form>
</body>
</html>
