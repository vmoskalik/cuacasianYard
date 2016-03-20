<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <style type="text/css">
        table.myTable {
            font-family: verdana,arial,sans-serif;
            font-size:11px;
            color:#333333;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            width: 60%;
            height: 50px;
            margin-left:auto;
            margin-right:auto;
        }
        table.myTable th {
            background:#1ee2ff;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
            text-align: center;
        }
        table.myTable td {
            background:#dcddc0 ;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
            text-align: center;
        }
        div.myDiv {
            margin:auto 0;
            text-align: center;
        }
        input.myInput {
            font-family: verdana,arial,sans-serif;
            font-size:11px;
            font-weight: bold;
            background:#1ee2ff;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
        }
    </style>
    <title>Visitors List</title>
</head>
<body>
<h2><a href="${pageContext.request.contextPath}/meals">Show Meal List</a></h2>
<h1 style="color:#d2691e; text-align:center">Visitors List</h1>

<table class="myTable">
    <thead>
    <tr>
        <th>Name</th>
        <th colspan="2">Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${userList}" var="tempUser">
        <jsp:useBean id="user" class="model.User" scope="page"/>
        <tr>
            <c:url var="editUrl" value="/users/update?id=${tempUser.id}" />
            <c:url var="deleteUrl" value="/users/delete?id=${tempUser.id}" />
            <td> ${tempUser.name} </td>
            <td><a href="${editUrl}">Edit</a></td>
            <td><a href="${deleteUrl}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<form action="${pageContext.request.contextPath}/users/create">
    <div class="myDiv">
        <input class="myInput" type="submit" value="Add Visitor">
    </div>
</form>
</body>
</html>
