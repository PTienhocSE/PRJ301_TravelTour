package controller.admin;

import dal.AccountDAO;
import dal.TourDAO;
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
@WebServlet("/addAccountServlet")
public class addAccountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        dao.addAccount(sfirstName, slastName, semail, susername, spassword, sphone, sisUser, sisAdmin);
        response.sendRedirect("loadAcc");
    }

    /**
     * private int userID; private String firstName; private String lastName;
     * private String email; private String username; private String password;
     * private String phone; private int isUser; private int isAdmin;
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
