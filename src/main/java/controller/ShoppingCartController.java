package controller;

import bean.Product;
import bean.ShoppingCart;

import java.util.Map;

public class ShoppingCartController {
    private ShoppingCart cart;

    public ShoppingCartController() {
        this.cart = new ShoppingCart();
    }
    public void addToCart(Product product, int quantity) {
        cart.addProduct(product,quantity);
    }
    public void removeFromCart(Product product, int quantity) {
        cart.removeProduct(product, quantity);
    }
    public void updateFromCart(Product product, int quantity) {
        cart.updateQuantity(product,quantity);
    }
    public void displayCart() {
        cart.displayCart();
    }
    public void saveCartToSession() {
        cart.saveCartItemToSession();
    }
    public void restoreCartFromSession() {
        Map<Product, Integer> saveCart = cart.restoreCartFromSession();
        if (saveCart != null) {
            cart.setCartItems(saveCart);
        }
    }
    public static void main(String[] args) {

    }
}
