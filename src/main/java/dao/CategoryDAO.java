package dao;

import bean.Category;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryDAO {

    public static List<Category> getAllCategory(){
        List<Category> categoryList = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select name from categories")
                        .mapToBean(Category.class)
                        .collect(Collectors.toList())
        );
        return categoryList;
    }
    public static void main(String[] args) {
        List<Category> all = CategoryDAO.getAllCategory();
        System.out.println(all);
    }
}
