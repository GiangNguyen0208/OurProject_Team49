package controller;

import bean.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import  java.io.IOException;

@WebServlet(name = "controller.LoginController", value = "/log")
public  class LoginController extends  HttpServlet{
     static String username, pass;
     public String error = "Bạn nhập sai tài khoản hoặc mật khẩu vui lòng nhập lại";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        username = req.getParameter("username");
        pass = req.getParameter("password");

        req.setAttribute("username", username);

//        Session
        User user = UserService.getInstance().checkLogin(username, pass);
        if(user != null){
            HttpSession session = req.getSession();
            session.setAttribute("auth", user);
            resp.sendRedirect("index.jsp");
        }
        else{
            req.setAttribute("error", error);
            req.getRequestDispatcher("log.jsp").forward(req,resp);
        }
    }
}