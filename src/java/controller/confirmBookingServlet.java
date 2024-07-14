package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/confirmBooking")
public class confirmBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user input from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String startDate = request.getParameter("startDate");
        int numPassengers = Integer.parseInt(request.getParameter("numPassengers"));
        int pricePerPassenger = Integer.parseInt(request.getParameter("price"));
        String tourCode = request.getParameter("tourCode");
        String title = request.getParameter("title");
        String price = request.getParameter("price");
        String duration = request.getParameter("duration");
        String travelTime = request.getParameter("travelTime");
        String imagePath = request.getParameter("imagePath");
        String departurePlace = request.getParameter("departurePlace");

        // Calculate total money
        int totalMoney = numPassengers * pricePerPassenger;

        // Set attributes to pass to the JSP
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("startDate", startDate);
        request.setAttribute("numPassengers", numPassengers);
        request.setAttribute("pricePerPassenger", pricePerPassenger);
        request.setAttribute("totalMoney", totalMoney);
        request.setAttribute("tourCode", tourCode);
        request.setAttribute("title", title);
        request.setAttribute("price", price);
        request.setAttribute("duration", duration);
        request.setAttribute("travelTime", travelTime);
        request.setAttribute("imagePath", imagePath);
        request.setAttribute("departurePlace", departurePlace);
        

        // Forward the request to confirmBooking.jsp
        request.getRequestDispatcher("/html/confirmBooking.jsp").forward(request, response);
    }
}
