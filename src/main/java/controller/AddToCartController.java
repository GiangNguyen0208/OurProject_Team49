package controller;

import bean.Item;
import bean.Order;
import bean.Product;
import service.ProductDetailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = {"/index.jsp/addToCart"})
public class AddToCartController extends HttpServlet {
    private ProductDetailService productDetailService;

    @Override
    public void init() throws ServletException {
        productDetailService = new ProductDetailService();
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int quantity = 1;
        int id;
        if (req.getParameter("productId") != null) {
            id = Integer.parseInt(req.getParameter("productId"));
            Product product = ProductDetailService.getInstance().getProductById(id);
            if (product != null) {
                if (req.getParameter("quantity") != null)
                    quantity = Integer.parseInt(req.getParameter("quantity"));
            }
            HttpSession session = req.getSession();
            if (req.getParameter("order") == null) {
                Order order = new Order();
                List<Item> items = new ArrayList<Item>();
                Item item = new Item();
                item.setQuantity(quantity);
                item.setProduct(product);
                item.setPrice(product.getTotalPrice());
                items.add(item);
                order.setItems(items);
                session.setAttribute("order", order);
            } else {
                Order order = (Order) session.getAttribute("order");
                List<Item> items = order.getItems();
                boolean check = false;  // Cập nhật sách đã tồn tại hay chưa?
                for (Item item : items) {
                    if (item.getProduct().getId() == product.getId()) {
                        item.setQuantity(item.getQuantity() + quantity);  // Nếu đã như thêm 1 sách có cùng id sách đã được thêm vào cart. + 1;
                        check = true;   // đưa ve true.
                    }
                }
                if (check = false) {  // Nếu chưa tồn tại trong cart thì set all thuộc tính.
                    Item item = new Item();
                    item.setQuantity(quantity);
                    item.setProduct(product);
                    item.setPrice(product.getTotalPrice());
                    items.add(item);
                }
                session.setAttribute("order", order);
            }
        }
        resp.sendRedirect(req.getContextPath() + "/client/index");
    }
}
