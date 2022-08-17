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
        <h2>Personal Info</h2>
    </div>
</div>

<div id="container">

    <div id="content">
     <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Phone Number</th>


            </tr>

            <c:forEach var="buyer" items="${buyers}">

                <c:url var="updateLink" value="/api/updatepersonal">
                    <c:param name="buyerId" value="${buyer.buyerId}"/>
                </c:url>

                <tr>
                    <td> ${buyer.buyerId} </td>
                    <td> ${buyer.buyerName} </td>
                    <td> ${buyer.age} </td>
                    <td> ${buyer.phone} </td>


                </tr>
            </c:forEach>
        </table>
        <br> <br> <br>

<%--        <input type="button" value="Update Information"--%>
<%--               onclick="window.location.href='updateLink'; return false;"--%>
<%--               class="add-button">--%>

        <a href="${updateLink}">Update</a>

    </div>
</div>

</body>
</html>
