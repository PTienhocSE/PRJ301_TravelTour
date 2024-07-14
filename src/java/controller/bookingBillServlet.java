package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import dal.BookingDAO;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/bookbill")
public class bookingBillServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get parameters from request
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String tourCode = request.getParameter("tour_code");
        String startDate = request.getParameter("startDate");
        String numPassengersParam = request.getParameter("numPassengers");
        String totalMoneyParam = request.getParameter("totalMoney");

        // Validate and parse parameters
        int tourId;
        int numPassengers;
        double totalMoney;

        try {
            numPassengers = Integer.parseInt(numPassengersParam); // This will throw NumberFormatException if numPassengersParam is not a number
            // Remove currency symbol before parsing
            totalMoneyParam = totalMoneyParam.replaceAll("[₫]", "");
            totalMoney = Double.parseDouble(totalMoneyParam); // This will throw NumberFormatException if totalMoneyParam is not a number
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.getWriter().println("Invalid parameter format. Please check your input.");
            return;
        }

        // Get tourId based on tourCode from database
        BookingDAO bookingDAO = new BookingDAO();
        try {
            tourId = bookingDAO.getTourIdByTourCode(tourCode); // Implement this method in your BookingDAO
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while processing your booking. Please try again later.");
            return;
        } finally {
            bookingDAO.close();
        }

        // Proceed with booking logic
        boolean success;
        try {
            success = bookingDAO.addBooking(fullName, email, phone, tourId, startDate, numPassengers, tourCode, totalMoney);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while processing your booking. Please try again later.");
            return;
        } finally {
            bookingDAO.close();
        }

        if (success) {
            // Set attributes for confirmation page
            request.setAttribute("fullName", fullName);
            request.setAttribute("email", email);
            request.setAttribute("phone", phone);
            request.setAttribute("startDate", startDate);
            request.setAttribute("numPassengers", numPassengers);
            request.setAttribute("totalMoney", totalMoney);
            request.setAttribute("tourCode", tourCode);

            // Forward to booking confirmation page
            request.getRequestDispatcher("/html/bookingConfirmation.jsp").forward(request, response);
        } else {
            response.getWriter().println("Booking failed. Please try again.");
        }
    }
}
