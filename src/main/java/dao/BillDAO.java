package dao;

import bean.Bill;
import bean.Item;
import bean.User;
import db.JDBIConnector;
import org.jdbi.v3.core.Handle;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class BillDAO {
    private static BillDAO instance;

    public static BillDAO getInstance() {
        if (instance == null) instance = new BillDAO();
        return instance;
    }

    private BillDAO() {
    }

    public List<Bill> getBillsByUser(User user) {
        try (Handle handle = JDBIConnector.me().open()) {
            return handle.createQuery("SELECT * FROM bills WHERE userId = :userId")
                    .bind("userId", user.getId())
                    .mapToBean(Bill.class)
                    .list();
        }
    }


    public void createOrder(String name, String phone, String address, String payment, HttpServletRequest req) {
        var cart = (List<Item>)req.getSession().getAttribute("cart");
        var user = req.getSession().getAttribute("auth");
        if (cart != null && user != null) {
            var total = 0.0;
            for (var item : cart) {
                total += item.getPrice();
            }
            var bill = new Bill((User) user, name, phone, address, total, payment);

            JDBIConnector.me().useHandle(handle -> {
                long billId = handle.createUpdate("INSERT INTO bills (userId, full_name, phone, address, totalPrice, payment_method) VALUES (:userId, :name, :phone, :address, :total, :payment)")
                        .bind("userId", bill.getUser().getId())
                        .bind("name", bill.getFullName())
                        .bind("phone", bill.getPhone())
                        .bind("address", bill.getAddress())
                        .bind("total", bill.getTotalPrice())
                        .bind("payment", bill.getPaymentMethod())
                        .executeAndReturnGeneratedKeys()
                        .mapTo(Long.class)
                        .findOnly();
                for (var item : cart) {
                    handle.createUpdate("INSERT INTO bill_details (billId, productId, quantity, total_price, product_color) VALUES (:billId, :productId, :quantity, :price, :color)")
                            .bind("billId", billId)
                            .bind("productId", item.getProduct().getId())
                            .bind("quantity", item.getQuantity())
                            .bind("price", item.getPrice())
                            .bind("color", item.getColorName())
                            .execute();
                }
            });
        }
    }
}