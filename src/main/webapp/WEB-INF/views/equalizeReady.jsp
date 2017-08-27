<%--
  Created by IntelliJ IDEA.
  User: 15
  Date: 22.08.2017
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>Equalize</title>
</head>
<body>


<%--&lt;%&ndash;<form:form  action="add"  method="post">&ndash;%&gt;--%>
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
