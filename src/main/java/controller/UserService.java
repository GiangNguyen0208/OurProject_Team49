package controller;

import dao.UserDAO;
import db.JDBIConnector;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class UserService {
    static Map<String, String> data = new HashMap<>();

    static {
        data.put("abc@gmail.com", "1234");
        data.put("dai@gmail.com", "12345");
    }

    public static UserService instance;

    public static UserService getInstance() {
        if (instance == null) instance = new UserService();
        return instance;

    }

    public User checkLogin(String email,String password) {
        User userByEmail = UserDAO.getUserByEmail(email);
        if(userByEmail != null && userByEmail.getEmail().equals(email) && userByEmail.getPassword().equals(password)) {
            return userByEmail;
        }
        return null;
    }

    public static void main(String[] args) {
        List<User> users = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users").mapToBean(User.class).collect(Collectors.toList())
        );
        System.out.println(users);
    }

}
