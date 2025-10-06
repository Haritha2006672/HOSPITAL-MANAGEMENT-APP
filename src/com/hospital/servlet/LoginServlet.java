package com.hospital.servlet;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username == null || password == null || username.isEmpty() || password.isEmpty()) {
            request.setAttribute("error", "Username or Password cannot be empty");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospitaldb", "root", "password"
            );

            // Check credentials
            String sql = "SELECT * FROM users WHERE username=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Successful login
                HttpSession session = request.getSession();
                session.setAttribute("username", username);

                // Optional: If you have roles
                String role = rs.getString("role"); // if role column exists
                session.setAttribute("role", role);

                // Redirect to dashboard
                response.sendRedirect("dashboard.jsp"); // make sure this path is correct
            } else {
                // Login failed
                request.setAttribute("error", "Invalid username or password");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Database connection problem");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // redirect GET requests to login page
        response.sendRedirect("login.jsp");
    }
}
