<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>MedCar Hospital</title>
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            font-family: Arial, sans-serif;
            color: white;
            text-align: center;
            padding-top: 50px;
        }
        .logo {
            width: 200px;
            height: 200px;
            margin-bottom: 20px;
        }
        h1 {
            font-size: 48px;
            margin-bottom: 10px;
        }
        h2 {
            font-size: 28px;
            margin-bottom: 40px;
        }
        .btn {
            display: inline-block;
            padding: 15px 40px;
            font-size: 20px;
            margin: 10px;
            color: #fff;
            background-color: #ff6b6b;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            text-decoration: none;
            transition: 0.3s;
        }
        .btn:hover {
            background-color: #ff4757;
        }
    </style>
</head>
<body>
    <!-- Hospital Logo -->
    <img src="images/logo.png" alt="Hospital Logo" class="logo">
    <h1>Welcome to MedCar Hospital</h1>
    <h2>Your Health, Our Priority</h2>

    <!-- Navigation Buttons -->
    <div>
        <a href="register.jsp" class="btn">Patient Registration</a>
        <a href="login.jsp" class="btn">Login</a>
    </div>
</body>
</html>

