package service;

import controller.User;
import controller.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import  java.io.IOException;

@WebServlet(name = "service.LoginController", value = "/login")
public  class LoginController extends  HttpServlet{
    private static  String DB_URL = "jdbc:mysql://localhost:3306/user";
    private  static String USER_NAME = "root";
    private  static  String PASS_NAME = "";
     static String email, pass;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.getWriter().println("Email :" + req.getParameter("email"));
//        resp.getWriter().println("Pass :" + req.getParameter("pass"));
        email = req.getParameter("email");
        pass = req.getParameter("pass");
//        Session
        User user = UserService.getInstance().checkLogin(email, pass);
//        try{
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection connection = DriverManager.getConnection(DB_URL,USER_NAME,PASS_NAME);
//            String sql = "select email, pass from user WHERE email=? and pass= ? ";
//            PreparedStatement pr = connection.prepareStatement(sql);
//            pr.setString(1,email);
//            pr.setString(2, pass);
//            ResultSet r1 = pr.executeQuery();
////            if(r1.next()){
////                resp.sendRedirect("index.jsp");
////            }
//            if(r1.next()){
////                resp.sendRedirect("index.jsp");
//
//                req.getRequestDispatcher("index.jsp").forward(req,resp);
//            }
//            else{
//        req.setAttribute("error","Bạn đã nhập sai email hoặc mật khẩu");
//                resp.getWriter().println("Khong dung");
//            }
//        }
//        catch(ClassNotFoundException e){
//            e.printStackTrace();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
        if(user != null){
            HttpSession session = req.getSession();
            session.setAttribute("auth", user);
            resp.sendRedirect("index.jsp");
        }
        else{
            req.setAttribute("error", "Bạn đã nhập sai email hoặc mật khẩu");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }
    }

}