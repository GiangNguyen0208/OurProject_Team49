package controller;

import bean.Brand;
import bean.Image_Product;
import bean.Product;
import bean.Product_Color;
import dao.ColorDAO;
import service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductDetailController", value = "/productdetails")
public class ProductDetailController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=UTF-8");

        try {
            int selectedProductId = Integer.parseInt(req.getParameter("selectedProductId"));

            // Lấy thông tin sản phẩm từ ID được chọn
            Product selectedProduct = ProductDetailService.getInstance().getProductById(selectedProductId);

            // Kiểm tra selectedProductId có tồn tại không
            if (selectedProduct != null) {
                // Lấy thông tin thương hiệu của sản phẩm (nếu cần)
                Brand selectedBrand = BrandService.getInstance().getNameBrandById(selectedProduct.getBrandId());
                double discount = DiscountService.getInstance().getDiscount(selectedProduct.getDiscountId());

                // Lấy thông tin ảnh và màu sắc của sản phẩm
                List<Image_Product> productImages = ImageService.getInstance().getImageByProductId(selectedProductId);
                List<Product_Color> productColors = ColorService.getInstance().getListColorCodeByIdProduct(selectedProductId);

                // Đặt thông tin vào request
                req.setAttribute("discount", discount);
                req.setAttribute("selectedProduct", selectedProduct);
                req.setAttribute("brands", selectedBrand);
                req.setAttribute("productImages", productImages);
                req.setAttribute("productColors", productColors);

                // Chuyển hướng sang trang productDetail.jsp
                req.getRequestDispatcher("productDetail.jsp").forward(req, resp);
            } else {
//                resp.sendRedirect("errorPage.jsp");
                // Nếu không tìm thấy sản phẩm, có thể xử lý tùy ý
            }
        } catch (Exception e) {
            e.printStackTrace();
//            resp.sendRedirect("errorPage.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
    }
}
