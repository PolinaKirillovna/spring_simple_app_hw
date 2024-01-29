<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        table {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        td {
            padding: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        input::placeholder {
            color: #7E8C9C;
        }

        input[type="submit"] {
            background-color: #0C243C;
            color: #fff;
            cursor: pointer;
            border: none;
            padding: 10px;
            border-radius: 5px;
        }

        a {
            text-decoration: none;
            color: #55C2C3;
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <td>Welcome ${username}</td>
    </tr>
    <tr>
        <td>
            <form action="changePassword" method="post">
                <input type="hidden" name="username" value="${username}">
                <input type="password" name="newPassword" placeholder="New password">
                <input type="submit" value="Change Password">
            </form>
        </td>
    </tr>
    <tr>
        <td><a href="getAllUsers">View All Users</a></td>
    </tr>
    <tr>
        <td><a href="index">Home</a></td>
    </tr>
</table>
</body>
</html>