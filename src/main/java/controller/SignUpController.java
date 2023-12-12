package controller;
import dao.UserDAO;
import service.SignUpService;
import util.Encode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/signup")
public class SignUpController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int countError = 0;

        String username = req.getParameter("username__signup");
        String email = req.getParameter("email__signup");
        String password = req.getParameter("password__signup");
        String confirmPassword = req.getParameter("confirm-password");

        req.setAttribute("username__signup", username);
        req.setAttribute("email__signup", username);


        String signUpError = null;

        boolean existUsername = SignUpService.getInstance().checkUsernameExist(username);
        boolean existEmail = SignUpService.getInstance().checkEmailExist(email);
        boolean checkConfirm = SignUpService.getInstance().checkConfirmPassword(password, confirmPassword);

        if (existEmail) {
            countError++;
            signUpError = "Email đã tồn tại";
        }
        if(existUsername) {
            countError++;
            signUpError = "Username đã tồn tại";
        }
        if(checkConfirm) {
            countError++;
            signUpError = "Xác thực thất bại đã tồn tại";
        }

        if(countError == 0) {
            UserDAO.registerUser(username, email, password);
            System.out.println(username);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
