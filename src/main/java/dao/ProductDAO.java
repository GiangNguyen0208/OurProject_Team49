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
import java.util.stream.Stream;

import static db.JDBIConnector.*;
import static db.JDBIConnector.connect;

public class ProductDAO {
    public static List<Product> getProductList() {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("Select *  from product_details")
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
    }

    public static List<Product> adminSearchProductByCategories(String value) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM product_details WHERE product_details.categoryId IN (SELECT id FROM categories WHERE LOWER(name) like LOWER(:like))")
                        .bind("like", "%" + value + "%")
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
    }

    public static List<Product> adminSearchProductByBrands(String value) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM product_details WHERE product_details.brandId IN (SELECT id FROM brands WHERE LOWER(name) like LOWER(:like))")
                        .bind("like", "%" + value + "%")
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
    }

    public static List<Product> adminSearchProductByName(String value) {
        List<Product> productList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM product_details WHERE LOWER(name) like LOWER(:like)")
                        .bind("like", "%" + value + "%")
                        .mapToBean(Product.class)
                        .collect(Collectors.toList())
        );
        return productList;
    }

    public static <Product> List<Product> mergeListsDistinct(List<Product>... lists) {
        return Stream.of(lists)
                .flatMap(List::stream)
                .distinct()
                .collect(Collectors.toList());
    }

    public static List<Product> adminSearchProduct(String value) {
        List<Product> productList = mergeListsDistinct(adminSearchProductByName(value), adminSearchProductByCategories(value), adminSearchProductByBrands(value));
        return productList;
    }
    public static void main(String[] args) {
        List<Product> all = ProductDAO.adminSearchProduct("an");
        for (Product p : all
        ) {
            System.out.println(p.toString());
        }
    }

}
