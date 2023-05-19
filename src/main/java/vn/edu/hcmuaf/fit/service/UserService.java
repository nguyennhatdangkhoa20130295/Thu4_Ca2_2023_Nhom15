package vn.edu.hcmuaf.fit.service;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.BlogDAO;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

public class UserService {
    private static UserService userService;
    public static UserService getInstance() {
        if (userService == null) {
            userService = new UserService();
        }
        return userService;
    }

    public User checkLogin(String uname, String passw) {
        String sql = "select id, username, password, email from users where username = :uname";
        User user = JDBIConnector.get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("uname", uname)
                        .mapToBean(User.class)
                        .one()
        );
        if(BCrypt.checkpw(passw, user.getPassword())) return user;
        else return null;
    }
}
