package dao;

import bean.*;
import db.DBProperties;
import db.JDBIConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static db.JDBIConnector.*;
import static db.JDBIConnector.connect;

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
    public static void main(String[] args) {
        List<Product> all = ProductDAO.getProductList();
        List<Product> productByCate = ProductDAO.getProductByCategory("Electric");
        List<Product> productByPrice = ProductDAO.getProductByPriceRange(0,10000000);
        List<Product> productByBrand = ProductDAO.getProductByBrand("Manhwa");
        List<Product> productByASC = ProductDAO.getProductAZ("ASC");
        List<Product> productDiscount = ProductDAO.getProductByDiscount();
        System.out.println(productDiscount);
    }



}
