package controller.admin;

import bean.Product;
import dao.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(value = "/adminViewProduct")
public class AdminViewProduct extends HttpServlet {
    int productId;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        productId = Integer.parseInt(req.getParameter("productId"));
        Product product = ProductDAO.adminViewProduct(productId);
        System.out.println(product.getDiscountAmount(product.getDiscountId()));
        req.setAttribute("product", product);
        req.getRequestDispatcher("./adminEditProduct.jsp").forward(req, resp);
    }
}
