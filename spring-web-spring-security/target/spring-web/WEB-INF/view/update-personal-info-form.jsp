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
        <h2>Information Form</h2>
    </div>
</div>

<div id="container">
    <h3>Update Account Details</h3>
    <form:form action="updatepersonal" modelAttribute="buyer" method="POST">
        <form:hidden path="buyerId"/>
        <table>
            <tbody>
            <tr>
                <td><label>Name:</label></td>
                <td><form:input path="buyerName"/></td>
            </tr>
            <tr>
                <td><label>Age:</label></td>
                <td><form:input path="age"/></td>
            </tr>
            <tr>
                <td><label>Phone:</label></td>
                <td><form:input path="phone"/></td>
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










