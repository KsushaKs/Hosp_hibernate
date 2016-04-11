<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ksu
  Date: 08.04.16
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Doctors</title>
</head>
<body>

<form action="/ms">
    <input name="action" type="submit" value="Specialities"/>
    <input name="action" type="submit" value="Doctors"/>
</form>
<table border="1" cellpadding="1" cellspacing="1">
    <tr>
        <th>id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Date Of Birth</th>
        <th>Experience</th>
        <th>Available</th>
        <th>action</th>
    </tr>
    <c:forEach var="doctor" items="${doctors}">
        <tr><form action="">
            <td>

                    <p><input name="action" type="submit" value="${doctor.id}"/></p>
                    <input name="id" type="hidden" value="${doctor.id}"/>
            </td>
            <td>
                <c:out value="${doctor.firstName}"/>
            </td>
            <td>
                <c:out value="${doctor.lastName}"/>
            </td>
            <td>
                    ${doctor.birthDate}
            </td>
            <td>
                <c:out value="${doctor.experience}"/>
            </td>
            <td>
                    ${doctor.available}
            </td>
            <td>
                <a href="/ms?action=delete&id=${doctor.id}">delete</a>
            </td>
            </form>
        </tr>
    </c:forEach>
</table>
<form action="/addDoctor" >
    <input type="submit" value="add Doctor">
</form>
</body>
</html>
