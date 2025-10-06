<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Schedule Appointment</title>
    <style>
        body { font-family: Arial; background: linear-gradient(to right, #ffecd2, #fcb69f); text-align:center; }
        .form-container { background-color:#fff; padding:30px; border-radius:15px; display:inline-block; margin-top:50px; }
        input, select { padding:10px; margin:10px; width:80%; border-radius:5px; }
        input[type=submit] { width:auto; cursor:pointer; background-color:#333; color:#fff; }
        input[type=submit]:hover { background-color:#555; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Schedule Appointment</h2>
        <form action="AppointmentServlet" method="post">
            <input type="text" name="patientName" placeholder="Patient Name" required><br>
            <input type="text" name="doctorName" placeholder="Doctor Name" required><br>
            <input type="date" name="appointmentDate" required><br>
            <input type="time" name="appointmentTime" required><br>
            <input type="submit" value="Schedule Appointment">
        </form>
    </div>
</body>
</html>
