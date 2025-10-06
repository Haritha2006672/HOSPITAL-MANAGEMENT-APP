package com.hospital.servlet;

import com.hospital.util.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String ageStr = request.getParameter("age");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob"); // format yyyy-mm-dd
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        int age = Integer.parseInt(ageStr);

        String sql = "INSERT INTO users (name, age, gender, dob, username, password) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pst = conn.prepareStatement(sql)) {

            pst.setString(1, name);
            pst.setInt(2, age);
            pst.setString(3, gender);
            pst.setString(4, dob);
            pst.setString(5, username);
            pst.setString(6, password);

            pst.executeUpdate();
            response.getWriter().println("<script>alert('Patient registered successfully'); window.location='login.jsp';</script>");

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("<script>alert('Error registering patient'); window.location='register.jsp';</script>");
        }
    }
}

