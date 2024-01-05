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
    public static void main(String[] args) {
        List<Product> all = ProductDAO.getProductList();
        System.out.println(all);
    }

}
