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
        <h2>Cart List</h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <input type="button" value="Add Medicine to Cart"
               onclick="window.location.href='createCart'; return false;"
               class="add-button">

        <br><br>
   <table>
            <tr>
                <th>ID</th>
                <th>Medicine Name</th>
                <th>Price</th>
                <th>Quantity</th>

            </tr>

            <c:forEach var="cart" items="${carts}">

                <c:url var="updatecartLink" value="/api/updatecart">
                    <c:param name="cartId" value="${cart.cartId}"/>
                </c:url>

                <c:url var="deletecartLink" value="/api/deletecart">
                    <c:param name="cartId" value="${cart.cartId}"/>
                </c:url>

                <tr>
                    <td> ${cart.cartId} </td>
                    <td> ${cart.cartMedsName} </td>
                    <td> ${cart.cartMedsPrice} </td>
                    <td> ${cart.cartMedsQuantity} </td>

                    <td>
                        <a href="${updatecartLink}">Update</a> | <a href="${deletecartLink}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br> <br>
        <input type="button" value="Add More"
               onclick="window.location.href='addMore'; return false;"
               class="add-button">

        <input type="button" value="Purchase"
               onclick="window.location.href='purchase'; return false;"
               class="add-button">
        <br> <br>
        <p>
            <a href="${pageContext.request.contextPath}/api/shop">Back to Medicine List </a>
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/api/two">Back to Homepage</a>
        </p>


    </div>
</div>

</body>
</html>
