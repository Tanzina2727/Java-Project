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
        <h2>Shop</h2>
    </div>
</div>

<div id="container">

    <div id="content">




        <form:form action="searchmeds" method="GET">
            Search Medicine: <input type="text" name="searchforbuyer"/>
            <input type="submit" value="Search" class="add-button"/>
        </form:form>

        <table>
            <tr>
                <th>ID</th>
                <th>Medicine Name</th>
                <th>Price</th>
                <th>Max Limit Available</th>


            </tr>

            <c:forEach var="medicine" items="${medicines}">
            <tr>
                <td> ${medicine.id} </td>
                <td> ${medicine.medsname} </td>
                <td> ${medicine.price} </td>
                <td> ${medicine.quantity} </td>

            </tr>
        </c:forEach>
        </table>
        <br> <br> <br>

        <input type="button" value="Add to cart"
               onclick="window.location.href='addCart'; return false;"
               class="add-button">
        <br> <br>
        <p>
            <a href="${pageContext.request.contextPath}/api/two">Back to Homepage</a>
        </p>


    </div>
</div>

</body>
</html>
