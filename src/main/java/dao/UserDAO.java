package dao;

import bean.User;
import db.JDBIConnector;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class UserDAO {
    public static User getUserByEmail(String email) {
        Optional<User> user = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from users where email = ?")
                        .bind(0, email)
                        .mapToBean(User.class).stream().findFirst()
        ));
        return user.isEmpty() ? null : user.get();
    }

    public static User getUserByUsername(String username) {
        Optional<User> user = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from users where username = ?")
                        .bind(0, username)
                        .mapToBean(User.class).stream().findFirst()
        ));
        return user.isEmpty() ? null : user.get();
    }


    public List<User> getUserList() {
        return JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from users")
                        .mapToBean(User.class)
                        .collect(Collectors.toList())
        );
    }

    public User getUserById(String id) {
        Optional<User> user = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from users where id = ?")
                        .bind(0, id)
                        .mapToBean(User.class).stream().findFirst()
        ));
        return user.isEmpty() ? null : user.get();
    }

    public static void registerUser(String username, String email, String password) {
        int id = 0;
        int phone = 0;
        String first = "";
        String last = "";
        Date date = new Date();
        String gender = "";
        int role = 0;
        int status = 0;
        JDBIConnector.me().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO users VALUE (:id, :username, :password, :email, :phone, :first, :last, :date, :gender, :role, :status)")
                    .bind("id", id)
                    .bind("username", username)
                    .bind("password", password)
                    .bind("email", email)
                    .bind("phone", phone)
                    .bind("first", first)
                    .bind("last", last)
                    .bind("date", date)
                    .bind("gender", gender)
                    .bind("role", role)
                    .bind("status", status)
                    .execute();
        });
    }


    public static void main(String[] args) {
     UserDAO userDAO = new UserDAO();
        System.out.println(userDAO.getUserList());
    }
}
