<%--
  Created by IntelliJ IDEA.
  User: 15
  Date: 22.08.2017
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>ListEquation</title>
    <style type="text/css">
        .table
        {
            margin: 0% 20% 0% 0%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            color: #333;
            line-height: 2px;
            border: 3px;
        }
        .td{
            font-family: "Times New Roman", sans-serif;
            font-size: 20px;
            text-align: center;

        }
    </style>
</head>
<body>

<c:forEach items="${equationList2}" var="equation">
<div class="table" >
    <table>
        <tr >


        <td class="td" align="center" width="100px">${equation.id}</td>
        <td class="td" align="center"  width="600px"> ${equation.equation}</td>
        <td><a href="<c:url value='/remove/${equation.id}'/>">Delete</a></td>
    </tr>

</table>
</div>
</c:forEach>
</body>
</html>
