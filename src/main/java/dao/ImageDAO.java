package dao;
import bean.Image_Product;
import bean.Product;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;
public class ImageDAO {
    public static List<Image_Product> getImageByProductId(int id) {
        List<Image_Product> imageList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("Select * from image_products\n" +
                                "where detailId ="+id)
                        .mapToBean(Image_Product.class)
                        .collect(Collectors.toList())
        );
        return imageList;
    }

    public static void main(String[] args) {
        System.out.println(getImageByProductId(1));
    }
}
