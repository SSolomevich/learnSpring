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
<table cellspacing="0px" cellpadding="2px" border="0px">
<c:forEach items="${equationList2}" var="equation">
    <tr>
        <td class="td" align="center">${equation.id}</td>
        <td class="td" align="center"> ${equation.equation}</td>
        <td><a href="<c:url value='/remove/${equation.id}'/>">Delete</a></td>
    </tr>
</c:forEach>
</table>
</body>
</html>
