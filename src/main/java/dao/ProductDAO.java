package dao;

import bean.*;
import db.JDBIConnector;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProductDAO {
public static List<Product> getProductList(){
    List<Product> productList = JDBIConnector.me().withHandle(handle ->
            handle.createQuery("Select *  from product_details")
                    .mapToBean(Product.class)
                    .collect(Collectors.toList())
    );
    return productList;
}
public static List<Product> getProductByCategory(String cateName) {
    List<Product> productList = JDBIConnector.me().withHandle(handle ->
            handle.createQuery("SELECT product_details.id, product_details.name, description, totalPrice FROM product_details \n" +
                            "JOIN categories ON product_details.categoryId = categories.id \n" +
                            "WHERE categories.name = ?")
                    .bind(0, cateName)
                    .mapToBean(Product.class)
                    .collect(Collectors.toList())
    );
    return productList;
    }
    public static List<Product> getProductByPriceRange(double minPrice, double maxPrice) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT product_details.id, product_details.name, description, totalPrice FROM product_details \n" +
                                "WHERE product_details.totalPrice Between :minPrice And :maxPrice")
                        .bind("minPrice", minPrice)
                        .bind("maxPrice", maxPrice)
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
    }
    public static List<Product> getProductByBrand(String brandName) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT product_details.id, product_details.name, description, totalPrice FROM product_details \n" +
                                "Join brands on brands.id = product_details.brandId \n" +
                                "Where brands.name = ?")
                        .bind(0, brandName)
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
    }
    public static List<Product> getProductAZ(String AZorZA) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT product_details.id, product_details.name, description, totalPrice\n" +
                                "FROM product_details \n" +
                                "Order By name " + AZorZA)
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
}
    public static List<Product> getProductAzPrice(String AZorZA) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT product_details.id, product_details.name, description, totalPrice\n" +
                                "FROM product_details \n" +
                                "Order By totalPrice " + AZorZA)
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
}
    public static List<Product> getProductByDiscount() {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT product_details.id, product_details.name, description, totalPrice " +
                                "From product_details " +
                                "Join discount on discount.id = product_details.categoryId " +
                                "Where discount.amount > 0")
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
}
    public static List<Product> getProductById(int id) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT product_details.id, product_details.name, description, totalPrice " +
                                "From product_details Where product_details.id = ?")
                                        .bind(0, id)
                                        .mapToBean(Product.class)
                                        .collect(Collectors.toList())
        );
        return productList;
}
    public static int getQuantityInStock(int id) {
    int quantityInStock = JDBIConnector.me().withHandle(handle ->
            handle.createQuery("SELECT quantity FROM product_details WHERE id = :id")
                    .bind("id", id)
                    .mapTo(int.class)
                    .findOne()
                    .orElse(0) // Giả sử trả về 0 nếu không tìm thấy sản phẩm
    );
    return quantityInStock;
}

    public static int getTotalProductNumber() {
        int totalProductNumber = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT count(*) FROM product_details")
                        .mapTo(int.class)
                        .findOne()
                        .orElse(0) // Giả sử trả về 0 nếu không tìm thấy sản phẩm
        );
        return totalProductNumber;
}

    public void updateProductQuantityInStock(int newQuantity, int id) {
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("UPDATE product_details SET quantity = :newQuantity WHERE id = :productId")
                        .bind("newQuantity", newQuantity)
                        .bind("productId", id)
                        .execute()
        );
    }
//    Phương thức để kiểm tra xem số lượng trong đơn hàng có vượt quá số lượng trong kho hay không
    public boolean isOrderQuantityValid(Order order) {
        for (Map.Entry<Product, Integer> entry : order.getOrderItems().entrySet()) {
            Product product = entry.getKey();
            int orderQuantity = entry.getValue();
            int stockQuantity = getQuantityInStock(product.getId());

            if (orderQuantity > stockQuantity) {
                System.out.println("Số lượng sản phẩm " + product.getName() + " trong đơn hàng vượt quá số lượng trong kho.");
                return false;
            }
        }
        return true;
    }
    public Product getProductId(int id) {
        Product product = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT product_details.id, product_details.name, totalPrice, quantity FROM product_details WHERE id = :id")
                        .bind("id", id)
                        .mapTo(Product.class)
                        .findOne()
                        .orElse(null) // Giả sử trả về null nếu không tìm thấy sản phẩm
        );
        return product;
    }

    public static void main(String[] args) {
        List<Product> productByCate = ProductDAO.getProductByCategory("Electric");
        List<Product> productByPrice = ProductDAO.getProductByPriceRange(0,10000000);
        List<Product> productByBrand = ProductDAO.getProductByBrand("Manhwa");
        List<Product> productByASC = ProductDAO.getProductAZ("ASC");
        List<Product> productDiscount = ProductDAO.getProductByDiscount();
        List<Product> productById = ProductDAO.getProductById(1);
        int totalProductNumber = ProductDAO.getTotalProductNumber();
        System.out.println(totalProductNumber);
//        Item item = ProductDAO.getItemById(1);
    }






}
