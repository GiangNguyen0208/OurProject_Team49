package service;

import bean.User;
import dao.UserDAO;
import db.JDBIConnector;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class UserService {
    static Map<String, String> data = new HashMap<>();

    public static UserService instance;

    public static UserService getInstance() {
        if (instance == null) instance = new UserService();
        return instance;

    }


    public User checkLogin(String username, String password) {

        User userByEmail = UserDAO.getUserByEmail(username);
        User userByUsername = UserDAO.getUserByUsername(username);

        if (userByEmail != null && userByEmail.getEmail().equals(username) && userByEmail.getPassword().equals(password)) {
            return userByEmail;
        } else if (userByUsername != null && userByUsername.getUsername().equals(username) && userByUsername.getPassword().equals(password)) {
            return userByUsername;
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
