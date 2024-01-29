<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>All Users</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    h2 {
      text-align: center;
    }

    table {
      width: 60%;
      margin-top: 20px;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
      padding: 10px;
      border: 1px solid #7E8C9C;
      text-align: left;
    }

    th {
      background-color: #0C243C;
      color: #fff;
    }

    .button-container {
      width: 60%;
      display: flex;
      justify-content: space-between;
    }

    a {
      text-decoration: none;
      color: #55C2C3;
      font-weight: bold;
      padding: 10px;
    }

    .back-button {
      text-align: left;
    }

    .home-button {
      text-align: right;
    }
  </style>
</head>
<body>
<h2>All Users</h2>
<table>
  <tr>
    <th>Username</th>
    <th>Email</th>
  </tr>
  <c:forEach var="user" items="${users}">
    <tr>
      <td>${user.username}</td>
      <td>${user.email}</td>
    </tr>
  </c:forEach>
</table>

<div class="button-container">
  <a href="welcome" class="back-button">Back</a>
  <a href="index" class="home-button">Home</a>
</div>

</body>
</html>
