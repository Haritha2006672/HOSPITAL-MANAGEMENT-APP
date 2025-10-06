<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Patient</title>
    <style>
        body { font-family: Arial; background: linear-gradient(to right, #fbc2eb, #a6c1ee); text-align:center; }
        .form-container { background-color:#fff; padding:30px; border-radius:15px; display:inline-block; margin-top:50px; }
        input, select { padding:10px; margin:10px; width:80%; border-radius:5px; }
        input[type=submit] { width:auto; cursor:pointer; background-color:#333; color:#fff; }
        input[type=submit]:hover { background-color:#555; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add Patient</h2>
        <form action="PatientServlet" method="post">
            <input type="text" name="name" placeholder="Full Name" required><br>
            <input type="number" name="age" placeholder="Age" required><br>
            <select name="gender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select><br>
            <input type="date" name="dob" placeholder="Date of Birth" required><br>
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Add Patient">
        </form>
    </div>
</body>
</html>
