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
        <h2>Medicine Form</h2>
    </div>
</div>

<div id="container">
    <h3>New Meidicine Details</h3>
    <form:form action="create" modelAttribute="medicine" method="POST">
        <table>
            <tbody>
            <tr>
                <td><label>Medicine name:</label></td>
                <td><form:input path="medsname"/></td>
                <td><form:errors path="medsname"/></td>
            </tr>
            <tr>
                <td><label>Price:</label></td>
                <td><form:input path="price"/></td>
                <td><form:errors path="price"/></td>
            </tr>
            <tr>
                <td><label>Quantity:</label></td>
                <td><form:input path="quantity"/></td>
                <td><form:errors path="quantity"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"/></td>
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










