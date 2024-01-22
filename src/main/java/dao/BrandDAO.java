package dao;

import bean.Brand;
import bean.Product;
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

    public static void main(String[] args) {
        List<Brand> getBrands = BrandDAO.getAllBrands();
        System.out.println(getBrands + "\n");
    }



}
