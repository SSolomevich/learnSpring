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
<html>
<head>
    <title>Hmmm</title>
</head>
<body>
Первая страница Spring!


<table cellspacing="0px" cellpadding="2px" border="0px">


    <c:forEach items="${equation}" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.equation}</td>
        </tr>
    </c:forEach>
    <c:forEach items="${equationList}" var="contact">
        <tr>
            <td>${contact.id}</td>
            <td>${contact.equation}</td>
        </tr>
    </c:forEach>

</table>


</body>
</html>