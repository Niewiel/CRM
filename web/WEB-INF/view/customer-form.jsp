<%--
  Created by IntelliJ IDEA.
  User: niewiel
  Date: 18.09.17
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Customer</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>

    <div id="container">
        <h3>Add Customer</h3>
        <form:form action="saveCustomer" modelAttribute="customer" method="post">
            <form:hidden path="id"/>
            <table>
                <tbody>
                <tr>
                    <td><label>First name</label></td>
                    <td><form:input path="firstName"></form:input></td>
                </tr>
                <tr>
                    <td><label>Last name</label></td>
                    <td><form:input path="lastName"></form:input></td>
                </tr>
                <tr>
                    <td><label>email</label></td>
                    <td><form:input path="email"></form:input></td>
                </tr>
                <tr>
                    <td><label></label></td>
                    <td><input type="submit" value="Save" class="save"/></td>
                </tr>
                </tbody>
            </table>

        </form:form>

        <div style="clear: both;">
            <p>
                <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
            </p>
        </div>
    </div>

</div>
</body>
</html>
