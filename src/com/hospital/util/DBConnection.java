package com.hospital.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/hospital_db";
    private static final String USER = "root"; // your MySQL username
    private static final String PASSWORD = "haritha@2715"; // your MySQL password

    public static Connection getConnection() throws SQLException {
        try {
            // For MySQL 8+ (com.mysql.cj.jdbc.Driver)
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

