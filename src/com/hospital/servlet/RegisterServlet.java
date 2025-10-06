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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO users (name, age, gender, dob, username, password) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, name);
            pst.setInt(2, Integer.parseInt(age));
            pst.setString(3, gender);
            pst.setString(4, dob);
            pst.setString(5, username);
            pst.setString(6, password);

            pst.executeUpdate();

            response.setContentType("text/html");
            response.getWriter().println("<script>alert('Registration Successful!');"
                    + "window.location='login.jsp';</script>");
        } catch (SQLException e) {
            response.setContentType("text/html");
            response.getWriter().println("<script>alert('Error: "+e.getMessage()+"');"
                    + "window.location='register.jsp';</script>");
        }
    }
}






