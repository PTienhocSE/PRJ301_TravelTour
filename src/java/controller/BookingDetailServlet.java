package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "BookingDetailsServlet", urlPatterns = {"/details"})
public class BookingDetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC URL, username, and password
    private static final String url = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301_TourTravel;encrypt=false;trustServerCertificate=false";
    private static final String user = "sa";
    private static final String password = "123";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get tourCode from request parameter (you should validate and sanitize this input)
        String tourCode = request.getParameter("tourCode");

        // Validate and sanitize tourCode parameter
        if (tourCode == null || tourCode.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing tourCode parameter");
            return;
        }

        // Retrieve tour details from the database
        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            String sql = "SELECT * FROM Tour WHERE tourCode = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, tourCode);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        // Set attributes for forwarding to JSP
                        request.setAttribute("tourCode", rs.getString("tourCode"));
                        request.setAttribute("title", rs.getString("title"));
                        request.setAttribute("price", rs.getString("price"));
                        request.setAttribute("duration", rs.getString("duration"));
                        request.setAttribute("travelTime", rs.getString("travelTime"));
                        request.setAttribute("imagePath", rs.getString("imagePath"));
                        request.setAttribute("departurePlace", rs.getString("departurePlace"));

                        // Forward to details.jsp
                        request.getRequestDispatcher("/traveltour/html/details.jsp").forward(request, response);
                    } else {
                        // Handle case where no tour is found with the given tourCode
                        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Tour not found");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database access error", e);
        }
    }

    // doPost method remains as you have it, handling form submissions
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Process form data, if any (not shown in your snippet)
    }

    // getServletInfo method remains as you have it
    public String getServletInfo() {
        return "Booking Details Servlet";
    }
}
