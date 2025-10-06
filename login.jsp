<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - MedCare Hospital</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
        }
        .logo {
            width: 180px;
            height: 180px;
            margin-bottom: 20px;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        form {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 0px 10px #aaa;
            width: 300px;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type=submit] {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            border: none;
            border-radius: 8px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        input[type=submit]:hover {
            background-color: #0056b3;
        }
        .message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <img src="images/logo.png" class="logo" alt="Hospital Logo">
    <h2>Login</h2>

    <!-- Login form submits to LoginServlet -->
    <form action="LoginServlet" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="Login">
    </form>

    <!-- Optional message for login errors -->
    <div class="message">
        <% 
            String errorMsg = (String) request.getAttribute("errorMessage");
            if(errorMsg != null) {
                out.print(errorMsg);
            }
        %>
    </div>
</body>
</html>


