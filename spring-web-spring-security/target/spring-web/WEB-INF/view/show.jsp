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
    <title>Department List</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Department List</h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <input type="button" value="Manage Medicine"
               onclick="window.location.href='manage'; return false;"
               class="add-button">

        <input type="button" value="Order History"
               onclick="window.location.href='order_history'; return false;"
               class="add-button">

        <input type="button" value="Offers"
               onclick="window.location.href='offers'; return false;"
               class="add-button">

        <input type="button" value="Shop Info"
               onclick="window.location.href='offers'; return false;"
               class="add-button">

        <br><br>

        <h1>Welcome, ${loggedInUser}</h1>


    </div>
</div>

</body>
</html>
