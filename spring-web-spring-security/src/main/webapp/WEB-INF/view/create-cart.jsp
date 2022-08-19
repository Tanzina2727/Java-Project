<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

<head>
    <title>New Meidicine Details</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/css/add-user-style.css">
</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Cart</h2>
    </div>
</div>

<div id="container">
    <h3>Provide Medicine Details</h3>
    <form:form action="createCart" modelAttribute="cart" method="POST">
        <table>
            <tbody>
            <tr>
                <td><label>Medicine name:</label></td>
                <td><form:input path="cartMedsName"/></td>
                <td><form:errors path="cartMedsName"/></td>
            </tr>
            <tr>
                <td><label>Price:</label></td>
                <td><form:input path="cartMedsPrice"/></td>
                <td><form:errors path="cartMedsPrice"/></td>
            </tr>
            <tr>
                <td><label>Quantity:</label></td>
                <td><form:input path="cartMedsQuantity"/></td>
                <td><form:errors path="cartMedsQuantity"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"/></td>
            </tr>
            </tbody>
        </table>
    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/api/shop">Back to Medicine List</a>
    </p>
    <p>
        <a href="${pageContext.request.contextPath}/api/addCart">Back to Your Cart</a>
    </p>

</div>
</body>
</html>










