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
        <h2> Home Page </h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <input type="button" value="Shop now"
               onclick="window.location.href='shop'; return false;"
               class="add-button">

        <input type="button" value="Add Buyer Info"
               onclick="window.location.href='createInfo'; return false;"
               class="add-button">

        <input type="button" value="Account and Personal Info"
               onclick="window.location.href='showpersonal'; return false;"
               class="add-button">

        <input type="button" value="Order History"
               onclick="window.location.href='buyerorder'; return false;"
               class="add-button">

        <input type="button" value="About Us"
               onclick="window.location.href='about'; return false;"
               class="add-button">

        <br><br>

        <h1>Welcome, ${loggedInUser}</h1>


    </div>
</div>

</body>
</html>
