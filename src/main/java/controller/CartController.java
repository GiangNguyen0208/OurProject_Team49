package controller;

import bean.Item;
import bean.Product;
import bean.ShoppingCart;
import bean.User;
import dao.ProductDAO;
import service.ProductDetailService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name ="CartController", value = "/cart")
public class CartController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    ProductDetailService productDetailService = new ProductDetailService();


    public CartController() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_DisplayCart(request, response);
        } else {
            if (action.equalsIgnoreCase("buy")) {
                doGet_Buy(request, response);
            } else if (action.equalsIgnoreCase("remove")) {
                doGet_Remove(request, response);
            }
        }
    }

    protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = isExisting(Integer.parseInt(request.getParameter("id")), cart);
        cart.remove(index);
        session.setAttribute("cart", cart);
        response.sendRedirect("cart");
    }

    protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("cart") == null) {
            System.out.println("run if");
            List<Item> cart = new ArrayList<>();
            String selectedCodeColor = request.getParameter("selectedCodeColor");
            Item item = new Item(productDetailService.getProductById(Integer.parseInt(request.getParameter("id"))), 1);
            cart.add(item);
            session.setAttribute("selectedColorName", selectedCodeColor);
            session.setAttribute("cart", cart);
        } else {
            System.out.println("run else");
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = isExisting(Integer.parseInt(request.getParameter("id")), cart);
            if (index == -1) {
                cart.add(new Item(productDetailService.getProductById(Integer.parseInt(request.getParameter("id"))), 1));
            } else {
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
            }
            session.setAttribute("cart", cart);
        }

       response.sendRedirect("cart.jsp");
    }

    private int isExisting(int id, List<Item> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProduct().getId() == id) {
                return i;
            }
        }
        return -1;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
