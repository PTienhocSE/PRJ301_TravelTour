/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
        // Lấy các tham số từ request
        String tourCode = request.getParameter("tourCode");
        String title = request.getParameter("title");
        String price = request.getParameter("price");
        String duration = request.getParameter("duration");
        String travelTime = request.getParameter("travelTime");
        String imagePath = request.getParameter("imagePath");
        String departurePlace = request.getParameter("departurePlace");

        // Lưu các tham số vào request attribute
        request.setAttribute("tourCode", tourCode);
        request.setAttribute("title", title);
        request.setAttribute("price", price);
        request.setAttribute("duration", duration);
        request.setAttribute("travelTime", travelTime);
        request.setAttribute("imagePath", imagePath);
        request.setAttribute("departurePlace", departurePlace);

        // Chuyển tiếp đến trang JSP để hiển thị chi tiết
        request.getRequestDispatcher("/html/details.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
