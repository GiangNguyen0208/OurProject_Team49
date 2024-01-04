package dao;
import bean.Image_Product;
import bean.Product;
import db.JDBIConnector;

import java.util.List;
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
    public static void main(String[] args) {
        List<Product> all = ProductDAO.getProductList();
        System.out.println(all);
    }
}
