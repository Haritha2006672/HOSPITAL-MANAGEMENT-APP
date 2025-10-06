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

@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String patientName = request.getParameter("patientName");
        String doctorName = request.getParameter("doctorName");
        String appointmentDate = request.getParameter("appointmentDate"); // format yyyy-mm-dd
        String appointmentTime = request.getParameter("appointmentTime");

        String sql = "INSERT INTO appointments (patient_name, doctor_name, appointment_date, appointment_time) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pst = conn.prepareStatement(sql)) {

            pst.setString(1, patientName);
            pst.setString(2, doctorName);
            pst.setString(3, appointmentDate);
            pst.setString(4, appointmentTime);

            pst.executeUpdate();
            response.getWriter().println("<script>alert('Appointment booked successfully'); window.location='dashboard.jsp';</script>");

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("<script>alert('Error booking appointment'); window.location='appointment.jsp';</script>");
        }
    }
}


