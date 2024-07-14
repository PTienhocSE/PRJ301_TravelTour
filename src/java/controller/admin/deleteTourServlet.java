/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dal.TourDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name="deleteTourServlet", urlPatterns={"/delete"})
public class deleteTourServlet extends HttpServlet {
   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        String id = request.getParameter("sid");
//        StudentDAO dao = new StudentDAO();
//        dao.deleteStudent(id);
//        response.sendRedirect("load");
        String id = request.getParameter("sid");
        TourDAO dao = new TourDAO();
        dao.deleteTour(id);
        response.sendRedirect("loadTour");
    } 

   
   
}
