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
</head>
<body>

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
</body>
</html>