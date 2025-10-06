<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Registration - MedCare Hospital</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f6d365, #fda085);
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
        input[type=text], input[type=password], input[type=date], select {
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
            background-color: #28a745;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        input[type=submit]:hover {
            background-color: #218838;
        }
    </style>
    <script>
        function showSuccess() {
            alert("Registered successfully!");
        }
    </script>
</head>
<body>
    <img src="images/logo.png" class="logo" alt="Hospital Logo">
    <h2>Patient Registration</h2>

    <form action="RegisterServlet" method="post" onsubmit="showSuccess()">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="date" name="dob" placeholder="Date of Birth" required>
        <select name="gender" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>
        <input type="submit" value="Register">
    </form>
</body>
</html>

