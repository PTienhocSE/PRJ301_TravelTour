package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;


public class confirmPaymentServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Database connection details
        String url = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301_TourTravel;encrypt=false;trustServerCertificate=false";
        String user = "sa";
        String password = "123";
        
        // Initialize variables for database connection and statement
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            // Register JDBC driver and establish connection
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(url, user, password);
            
            // Retrieve booking information from request parameters
            String fullName = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String tourCode = request.getParameter("tourCode");
            String startDay = request.getParameter("startDate");
            int numPassengers = Integer.parseInt(request.getParameter("numPassengers"));
            String totalMoney = request.getParameter("totalMoney");
            
            // SQL query to insert booking into database
            String sql = "INSERT INTO Booking (full_name, email, phone, tour_code, start_day, num_passengers, total_money) "
                       + "VALUES (?, ?, ?, ?, ?, ?, ?)";
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, fullName);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, tourCode);
            stmt.setString(5, startDay);
            stmt.setInt(6, numPassengers);
            stmt.setString(7, totalMoney);
            
            // Execute the update
            int rowsAffected = stmt.executeUpdate();
            
            // Check if booking was successfully added to the database
            if (rowsAffected > 0) {
                // Redirect to a success page or display a success message
                response.sendRedirect(request.getContextPath() + "/traveltour/html/confirmPayment.jsp");
            } else {
                // Handle failure scenario (optional)
                // You can redirect to an error page or display an error message
                response.sendRedirect(request.getContextPath() + "/error.jsp");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions (optional)
            // You can redirect to an error page or display an error message
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        } finally {
            // Close resources
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}
