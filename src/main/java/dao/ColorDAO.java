package dao;

import bean.Image_Product;
import bean.Product_Color;
import db.JDBIConnector;

import java.awt.*;
import java.util.List;
import java.util.stream.Collectors;

public class ColorDAO {
    public static List<Product_Color> getColorByProductId(int id) {
        List<Product_Color> colorList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("Select product_color.nameColor from product_color\n" +
                                "where detailId = :id")
                        .bind("id", id)
                        .mapToBean(Product_Color.class)
                        .collect(Collectors.toList())
        );
        return colorList;
    }

    public static void main(String[] args) {
        List<Product_Color> colorList = ColorDAO.getColorByProductId(1);
    }
}
