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
        <h2>Your Order Has Been Placed</h2>
        <h2>Order History</h2>
    </div>
</div>

<div id="container">

    <div id="content">
    <table>
            <tr>
                <th>Medicine Name</th>
                <th>Price</th>
                <th>Quantity</th>


            </tr>

        <c:forEach var="cart" items="${carts}">

            <tr>
                <td> ${cart.cartMedsName} </td>
                <td> ${cart.cartMedsPrice} </td>
                <td> ${cart.cartMedsQuantity} </td>


            </tr>
        </c:forEach>
        </table>
        <br> <br> <br>
        <p>
            <a href="${pageContext.request.contextPath}/api/two">Back to Homepage</a>
        </p>


    </div>
</div>

</body>
</html>
