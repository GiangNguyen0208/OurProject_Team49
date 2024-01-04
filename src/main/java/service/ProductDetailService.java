package service;
import bean.Product;
import dao.ProductDAO;

import java.awt.datatransfer.SystemFlavorMap;
import java.util.List;
public class ProductDetailService {
    public static ProductDetailService instance;
    public static ProductDetailService getInstance() {
        if (instance == null) instance = new ProductDetailService();
        return instance;
    }
    public List<Product> getProductList() {
        return ProductDAO.getProductList();
    }
    public static void main(String[] args) {
        ProductDetailService productDetailService = new ProductDetailService();
        System.out.println(productDetailService.getProductList());
    }
}
