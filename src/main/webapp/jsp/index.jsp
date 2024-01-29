<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        table {
            margin: 50px auto;
        }

        td {
            padding: 10px 20px;
        }

        a {
            text-decoration: none;
            color: #55C2C3;
            font-weight: bold;
            font-size: 18px;
            border: 2px solid #55C2C3;
            border-radius: 5px;
            padding: 10px 20px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #55C2C3;
            color: #fff;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <td><a href="login">Login</a></td>
        <td><a href="register">Register</a></td>
    </tr>
</table>
</body>
</html>