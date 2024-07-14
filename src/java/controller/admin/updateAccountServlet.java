/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.AccountDAO;
import dal.TourDAO;
import model.Account;
import model.Tour;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author thngu
 */
@WebServlet(name = "updateAccountServlet", urlPatterns = {"/updateAccountServlet"})
public class updateAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String id = request.getParameter("sid");
//        StudentDAO dao = new StudentDAO();
//        Student s = dao.getStudentByID(id);
//        request.setAttribute("st", s);
//        request.getRequestDispatcher("Update.jsp").forward(request, response);
        String id = request.getParameter("sid");
        AccountDAO dao = new AccountDAO();
        Account account = dao.getAccountById(id);
        request.setAttribute("st", account);
        request.getRequestDispatcher("./html/updateAccount.jsp").forward(request, response);
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
        String suserID = request.getParameter("userID");
        String sfirstName = request.getParameter("firstName");
        String slastName = request.getParameter("lastName");
        String semail = request.getParameter("email");
        String susername = request.getParameter("username");
        String spassword = request.getParameter("password");
        String sphone = request.getParameter("phone");
        String sisUser = request.getParameter("isUser");
        String sisAdmin = request.getParameter("isAdmin");
        AccountDAO dao = new AccountDAO();
        dao.updateAccout(suserID, sfirstName, slastName, semail, susername, spassword, sphone, sisUser, sisAdmin);
        response.sendRedirect("loadAcc");
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
