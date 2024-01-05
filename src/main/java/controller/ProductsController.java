package controller;

import bean.Category;
import bean.Product;
import service.CategoryService;
import service.ProductDetailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductsController", value = "/products")
public class ProductsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categoryList = CategoryService.getInstance().getAllCategories();
        List<Product> listProduct = ProductDetailService.getInstance().getProductList();
        req.setAttribute("products", listProduct);
        req.setAttribute("categories", categoryList);
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }
}
