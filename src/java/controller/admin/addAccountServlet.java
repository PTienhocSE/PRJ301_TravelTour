package controller.admin;

import dal.AccountDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addAccountServlet")
public class addAccountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String isUser = request.getParameter("isUser");
        String isAdmin = request.getParameter("isAdmin");

        AccountDAO dao = new AccountDAO();
        dao.addAccount(firstName, lastName, email, username, password, phone, isUser, isAdmin);

        response.sendRedirect("loadAcc");
    }

    @Override
    public String getServletInfo() {
        return "Add Account Servlet";
    }
}
