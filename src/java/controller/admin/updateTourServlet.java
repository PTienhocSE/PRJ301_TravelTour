/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.TourDAO;
import model.Tour;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "updateTourServlet", urlPatterns = {"/updateTourServlet"})
public class updateTourServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("sid");
        TourDAO dao = new TourDAO();
        Tour tour = dao.getTourById(id);
        request.setAttribute("st", tour);
        request.getRequestDispatcher("./html/updateTour.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String sid = request.getParameter("id");
//        String sname = request.getParameter("name");
//        String sgender = request.getParameter("gender");
//        String sdob = request.getParameter("dob");
//        StudentDAO dao = new StudentDAO();
//        dao.updateStudent(sid, sname, sgender, sdob);
//        response.sendRedirect("load");
        String sid = request.getParameter("id");
        String stitle = request.getParameter("title");
        String stourCode = request.getParameter("tourCode");
        String sdeparturePlace = request.getParameter("departurePlace");
        String stravelTime = request.getParameter("travelTime");
        String sduration = request.getParameter("duration");
        String sprice = request.getParameter("price");
        String simagePath = request.getParameter("imagePath");
        TourDAO dao = new TourDAO();
        dao.updateTour(sid, stitle, stourCode, sdeparturePlace, stravelTime, sduration, sprice, simagePath);
        response.sendRedirect("loadTour");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
