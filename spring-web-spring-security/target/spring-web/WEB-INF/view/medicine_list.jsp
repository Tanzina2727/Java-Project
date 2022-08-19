<%--
  Created by IntelliJ IDEA.
  User: kawsu
  Date: 11/29/2021
  Time: 11:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>User List</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css"/>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/css/add-user-style.css">

</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Medicine List</h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <input type="button" value="Add New Medicine"
               onclick="window.location.href='create'; return false;"
               class="add-button">

        <br><br>

        <form:form action="search" method="GET">
            Search user by firstname: <input type="text" name="searchValue"/>
            <input type="submit" value="Search" class="add-button"/>
        </form:form>

        <table>
            <tr>
                <th>ID</th>
                <th>Medicine Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Actions</th>
            </tr>

            <c:forEach var="medicine" items="${medicines}">

                <c:url var="updateLink" value="/api/update">
                    <c:param name="medsId" value="${medicine.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/api/delete">
                    <c:param name="medsId" value="${medicine.id}"/>
                </c:url>

                <tr>
                    <td> ${medicine.id} </td>
                    <td> ${medicine.medsname} </td>
                    <td> ${medicine.price} </td>
                    <td> ${medicine.quantity} </td>

                    <td>
                        <a href="${updateLink}">Update</a> | <a href="${deleteLink}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>


    </div>
</div>

</body>
</html>
