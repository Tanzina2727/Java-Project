<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

<head>
    <title>Update Medicine Details</title>

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
        <h2>Update Medicine Details</h2>
    </div>
</div>

<div id="container">


    <form:form action="updatecart" modelAttribute="carts" method="POST">
        <form:hidden path="cartId"/>
        <table>
            <tbody>
            <tr>
                <td><label>Medicine Name:</label></td>
                <td><form:input path="cartMedsName"/></td>
            </tr>
            <tr>
                <td><label>Medicine Price:</label></td>
                <td><form:input path="cartMedsPrice"/></td>
            </tr>
            <tr>
                <td><label>Quantity:</label></td>
                <td><form:input path="cartMedsQuantity"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Update" class="update"/></td>
            </tr>
            </tbody>
        </table>
    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/api/list">Back to List</a>
    </p>

</div>
</body>
</html>










