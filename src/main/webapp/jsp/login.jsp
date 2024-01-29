<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        #loginForm {
            margin: 50px auto;
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
        }

        label {
            font-weight: bold;
        }

        input, button {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        input::placeholder {
            color: #7E8C9C;
        }

        button {
            background-color: #0C243C;
            color: #fff;
            cursor: pointer;
        }

        button:hover {
            background-color: #0C243C;
        }

        a {
            text-decoration: none;
            color: #55C2C3;
        }

        #errorMessage {
            font-style: italic;
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
    <table>
        <tr>
            <td><label for="username">Username:</label></td>
            <td><form:input path="username" id="username" placeholder="Enter your username" /></td>
        </tr>
        <tr>
            <td><label for="password">Password:</label></td>
            <td><form:password path="password" id="password" placeholder="Enter your password" /></td>
        </tr>
        <tr>
            <td></td>
            <td><form:button id="login" name="login">Login</form:button></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="index">Home</a></td>
        </tr>
    </table>
</form:form>

<div id="errorMessage">${message}</div>

</body>
</html>