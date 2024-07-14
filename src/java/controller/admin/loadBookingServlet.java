package controller.admin;

import dal.BookingDAO;
import model.Booking;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "loadBookingServlet", urlPatterns = {"/loadBooking"})
public class loadBookingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BookingDAO dao = new BookingDAO();
        List<Booking> list;
        try {
            list = dao.getAllBooking();
            request.setAttribute("listS", list);
            request.getRequestDispatcher("./dashboard/manager.booking.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(loadBookingServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            dao.close();
        }
    }
}
