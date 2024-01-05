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
//        doPost(req, resp);
        String category = req.getParameter("category");
        String minPricePara = req.getParameter("minPrice");
        String maxPricePara = req.getParameter("maxPrice");

        List<Product> productList = null;
        if (category != null && !category.isEmpty()) {
            productList = ProductDetailService.getInstance().getProductByCategory(category);
        } else if (minPricePara != null && maxPricePara != null && !minPricePara.isEmpty() && !maxPricePara.isEmpty()) {
            double minPrice = Double.parseDouble(minPricePara);
            double maxPrice = Double.parseDouble(maxPricePara);
            productList = ProductDetailService.getInstance().getProductByPriceRange(minPrice, maxPrice);
        } else {
            productList = ProductDetailService.getInstance().getProductList();
        }

        List<Category> categoryList = CategoryService.getInstance().getAllCategories();

        req.setAttribute("categories", categoryList);
        req.setAttribute("products", productList);
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        List<Category> categoryList = CategoryService.getInstance().getAllCategories();
//
//        req.setAttribute("categories", categoryList);
//        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }
}
