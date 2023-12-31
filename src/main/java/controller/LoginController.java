package controller;

import bean.User;
import mail.MailService;
import service.UserService;
import util.Encode;
import util.VerificationCode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import  java.io.IOException;

@WebServlet(name = "controller.LoginController", value = "/log")
public  class LoginController extends  HttpServlet{
     static String username, pass, email;
     public String error = "Bạn nhập sai tài khoản hoặc mật khẩu vui lòng nhập lại";
     int verifyCode;
     public static final String SUBJECT = "MÃ XÁC MINH";
     public String unVerify = "Tài khoản chưa được xác thực";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        email = req.getParameter("email");
        username = req.getParameter("username");
        pass = req.getParameter("password");
        pass = Encode.toSHA1(pass);

        verifyCode = VerificationCode.generateVerificationCode();


//        Session
        User user = UserService.getInstance().checkLogin(username, pass);
        HttpSession session = req.getSession();
        session.removeAttribute("verificationCode");
        session.removeAttribute("verificationTime");
        if(email != null) {
            session.setAttribute("verificationCode", verifyCode);
            session.setAttribute("verificationTime", System.currentTimeMillis());
            session.setAttribute("email", email);
            MailService.send(email, SUBJECT, "Đây là mã xác minh của bạn : " + verifyCode);
            req.getRequestDispatcher("verify.jsp").forward(req, resp);
        }
        if(user != null){
            if(user.getStatus() != 0) {
                session.setAttribute("auth", user);
                resp.sendRedirect("index.jsp");
            }else {
                req.setAttribute("isNotVerify", "Tài khoản chưa được xác thực");
                req.getRequestDispatcher("logIn.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("username", username);
            req.setAttribute("error", error);
            req.getRequestDispatcher("logIn.jsp").forward(req,resp);
        }
    }
}