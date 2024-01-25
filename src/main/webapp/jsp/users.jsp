<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>All Users</title>
</head>
<body>
<h2>All Users:</h2>
<table>
  <c:forEach var="user" items="${users}">
    <tr>
      <td>${user.username}</td>
      <td>${user.email}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>

