package dao;

import controller.User;
import db.JDBIConnector;

import java.util.Optional;

public class UserDAO {
    public static User getUserByEmail(String email) {
        Optional<User> user = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from users where email = ?")
                        .bind(0, email)
                        .mapToBean(User.class).stream().findFirst()
                ));
        return user.isEmpty() ? null : user.get();
    }
}
