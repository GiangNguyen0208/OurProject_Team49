package dao;

import bean.Brand;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class BrandDAO {
    public static List<Brand> getAllBrands(){
        List<Brand> brandList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select name from brands")
                        .mapToBean(Brand.class)
                        .collect(Collectors.toList())
        );
        return brandList;
    }

    public static Brand getNameBrandById(int brandId) {
        Brand brand = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT name FROM brands " +
                                "WHERE id = :id")
                        .bind("id", brandId)
                        .mapToBean(Brand.class)
                        .findOne()
                        .orElse(null) // Giả sử trả về null nếu không tìm thấy sản phẩm
        );
        return brand;
    }

    public static void main(String[] args) {
        Brand brand = getNameBrandById(1);
        System.out.println(brand);
    }
}
