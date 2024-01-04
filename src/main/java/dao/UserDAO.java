package dao;

import bean.User;
import db.JDBIConnector;

import java.sql.PreparedStatement;
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
        Optional<User> user =  JDBIConnector.me().withHandle((handle ->
            handle.createQuery("select * from users where id = ?")
                    .bind(0, id)
                    .mapToBean(User.class).stream().findFirst()
        ));

        return user.isEmpty() ? null : user.get();
    }
}
