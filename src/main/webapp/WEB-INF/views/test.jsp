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
Первая страница Spring!

<div class="table" >
<table cellspacing="0px" cellpadding="2px" border="0px">


    <c:forEach items="${equation}" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.equation}</td>
        </tr>
    </c:forEach>

    <c:forEach items="${equationList}" var="contact">
        <tr>
            <td class="td" align="center">${contact.id}</td>
            <td class="td" align="center"> ${contact.equation}</td>
        </tr>
    </c:forEach>

</table>

</div>

<tr style="background-color: #F0F0F0">
    <td class="td" > Введите уравнение реакции без коэффициентов</td>
    <td class="i" > <input type="text" name="Equation" maxlength="50"  size="14"  class="i2"/></td>
</tr>
<tr>
    <td class="td"> </td>
    <td class="td2"> <input type="submit" name="success" value="Ок" class="input"> </td>
</tr>


<form:form method="post" action="add" commandName="equation">

    <table>
        <tr>
            <%--<td><form:label path="id">ID</form:label></td>--%>
            <%--<td><form:input path="id" /></td>--%>
        </tr>
        <tr>
            <%--<td><form:label path="equation">Eq</form:label></td>--%>
            <%--<td><form:input path="equation" /></td>--%>
        </tr>

            <tr>
            <td colspan="2"><input type="submit"
                   value="sub" /></td>
        </tr>
    </table>
</form:form>


</body>
</html>