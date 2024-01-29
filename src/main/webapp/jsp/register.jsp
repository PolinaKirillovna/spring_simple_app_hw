<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        #regForm {
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
            color: #555;
        }

        input, button {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        input::placeholder {
            color: #7E8C9C; /* Set placeholder text color to gray */
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
    </style>
</head>
<body>

<form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
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
            <td><label for="email">Email:</label></td>
            <td><form:input path="email" id="email" placeholder="Enter your email" /></td>
        </tr>
        <tr>
            <td></td>
            <td><form:button id="register" name="register">Register</form:button></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="index">Home</a></td>
        </tr>
    </table>
</form:form>

</body>
</html>