package controller;

import bean.User;
import dao.UserDAO;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(value = "/profile")
public class ProfileUserController extends HttpServlet {
    String email, phone, firstName, lastName, birthDate, gender;
    String emailError, phoneError;
    int countError = 0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        email = req.getParameter("email");
        phone = req.getParameter("phone");
        int phoneValue = Integer.parseInt(phone);
        firstName = req.getParameter("firstName");
        lastName = req.getParameter("lastName");
        birthDate = req.getParameter("birthDate");
        gender = new String(req.getParameter("gender").getBytes("ISO-8859-1"), "UTF-8");
        req.setAttribute("email", email);
        req.setAttribute("phone", phone);
        req.setAttribute("firstName", firstName);
        req.setAttribute("lastName", lastName);
        req.setAttribute("birthDate", birthDate);

        Object obj = req.getSession().getAttribute("auth");
        User user = null;
        if (obj != null) {
            user = (User) obj;
            if (user != null) {
                String username = user.getUsername();
                User u = new User(0, username, "", email, phoneValue, firstName, lastName, birthDate, gender, 0, 0 );
                UserDAO.changeInfo(u);
                User user2 = UserDAO.getUserByUsername(username);
                req.getSession().setAttribute("auth", user2);

            }
        }

        req.getRequestDispatcher("profile.jsp").forward(req, resp);
    }
}
