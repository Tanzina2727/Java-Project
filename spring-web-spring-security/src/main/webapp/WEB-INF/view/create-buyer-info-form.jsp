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
        <h2>Account Info</h2>
    </div>
</div>

<div id="container">
    <h3></h3>
        <%--@elvariable id="buyer" type=""--%>
        <form:form action="createInfo" modelAttribute="buyer" method="POST">
            <table>
                <tbody>
                <tr>
                    <td><label>Your name:</label></td>
                    <td><form:input path="buyerName"/></td>
                    <td><form:errors path="buyerName"/></td>
                </tr>
                <tr>
                    <td><label>Age:</label></td>
                    <td><form:input path="age"/></td>
                    <td><form:errors path="age"/></td>
                </tr>
                <tr>
                    <td><label>Quantity:</label></td>
                    <td><form:input path="phone"/></td>
                    <td><form:errors path="phone"/></td>
                </tr>
                <tr>
                    <td><label></label></td>
                    <td><input type="submit" value="Save" class="save"/></td>
                </tr>
                </tbody>
            </table>
        </form:form>



</div>
</body>
</html>










