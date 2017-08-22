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
        .table
        {
            margin-left: 5px;
            margin-top: 5px;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            color: #333;
            line-height: 2px;
            border: 3px;

        }
        .th
        {
            font-family: "Times New Roman", sans-serif;
            font-weight: bold;
            font-size: 14px;
            /*padding: 10px ;*/
            /*height: 40px;*/
            /*width: 150px;*/
            background-color: #C0C0C7 ;
            text-align: center;
        }
        .td
        {
            font-family: "Times New Roman", sans-serif;
            font-size: 14px;
            /*padding: 10px ;*/
            /*height: 40px;*/
            /*width: 150px;*/
            /*text-align: center;*/
        }
    </style>
</head>
<body>


<%--<table cellspacing="0px" cellpadding="2px" border="0px">--%>


    <%--<c:forEach items="${equation}" var="c">--%>
        <%--<tr>--%>
            <%--<td>${c.id}</td>--%>
            <%--<td>${c.equation}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>

    <%--<c:forEach items="${equationList}" var="equation">--%>
        <%--<tr>--%>
            <%--<td class="td" align="center">${equation.id}</td>--%>
            <%--<td class="td" align="center"> ${equation.equation}</td>--%>
            <%--<td><a href="<c:url value='/remove/${equation.id}'/>">Delete</a></td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>

<%--</table>--%>




<%--<form:form  action="add"  method="post">--%>
    <%--<form:form  action="add" >--%>
    <%--<tr style="background-color: #F0F0F0">--%>
        <%--<td class="td" > Введите уравнение реакции без коэффициентов метод add</td>--%>
        <%--<td class="i" > <input type="text" name="equation" maxlength="50"  size="14"  class="i2"/></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td class="td"> </td>--%>
        <%--<td class="td2"> <input type="submit" name="success" value="Ок" class="input"> </td>--%>
    <%--</tr>--%>
<%--</form:form>--%>

    <form:form  action="equalize" >
    <table>
    <tr style="background-color: #F0F0F0">
        <td class="td" > Введите уравнение реакции без коэффициентов </td>

    </tr>
        <tr>
            <td class="i" > <input type="text" name="equation" maxlength="50"  size="14"  class="i2"/></td>
        </tr>
    <tr>
        <%--<td class="td"> </td>--%>
        <td class="td2"> <input type="submit" name="success" value="Ок" class="input"> </td>
    </tr>
    </table>
    </form:form>


<br>

<div> Решение:</div>
        <%--<td class="td" align="center">${lastEquation.id}</td>--%>
        <%--<td class="td" align="center"> ${lastEquation.equation}</td>--%>
<div> ${lastEquation.equation}
</div>


<br>
    <br>
    <br>
    <form:form  action="list" >
    <tr>
        <td class="td"> </td>
        <td class="td2"> <input type="submit" name="success" value="List Equation" class="input"> </td>
    </tr>
    </form:form>

</body>
</html>