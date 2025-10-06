<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hospital Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5); /* colorful gradient */
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .header {
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin-bottom: 50px;
        }

        .header img {
            width: 150px; /* bigger logo */
            height: 150px;
        }

        .header h1 {
            margin: 10px 0 0 0;
            color: #333;
        }

        .buttons {
            display: flex;
            justify-content: center;
            gap: 40px;
        }

        .btn {
            background-color: #fff;
            color: #333;
            padding: 20px 40px;
            font-size: 18px;
            text-decoration: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #333;
            color: #fff;
            transform: translateY(-5px);
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="images/logo.png" alt="Hospital Logo">
        <h1>Welcome to MedCare Hospital</h1>
    </div>

    <div class="buttons">
        <a href="PatientServlet" class="btn">Patient Details</a>
        <a href="AppointmentServlet" class="btn">Appointments</a>
    </div>
</body>
</html>

