package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DetailsServlet")
public class DetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tourCode = request.getParameter("tourCode");
        String title = request.getParameter("title");
        String price = request.getParameter("price");
        String duration = request.getParameter("duration");
        String travelTime = request.getParameter("travelTime");
        String imagePath = request.getParameter("imagePath");
        String departurePlace = request.getParameter("departurePlace");

        // Set attributes in request scope
        request.setAttribute("tourCode", tourCode);
        request.setAttribute("title", title);
        request.setAttribute("price", price);
        request.setAttribute("duration", duration);
        request.setAttribute("travelTime", travelTime);
        request.setAttribute("imagePath", imagePath);
        request.setAttribute("departurePlace", departurePlace);

        // Forward the request to details.jsp
        request.getRequestDispatcher("/html/details.jsp").forward(request, response);
    }
}
