package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.service.RegisterService;

public class RegisterDAO {
    public RegisterDAO() {
    }
    // 5.2.3 Truy vấn cơ sở dữ liệu để kiểm tra tài khoản ở bảng `users`.
    public User checkUsernameAndEmailExists(String username, String email) {
        try {
            User user = JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT u.username, u.email FROM users u WHERE u.username = ? OR u.email = ?").bind(0, username).bind(1, email).mapToBean(User.class).one());
            // 5.2.4 Trả về kết quả kiểm tra cho RegisterDAO.
            return user;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    // 10.1.2.1.3 Thực hiện query thêm người dùng mới vào bảng `users` và thêm role của người dùng vào bảng user_info.
    public void insertNewUser(String username, String password, String email) {
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("INSERT INTO users(username, password, email) VALUES (?,?,?)").bind(0, username).bind(1, password).bind(2, email).execute();
            User user = handle.createQuery("SELECT id FROM users WHERE username = ?").bind(0, username).mapToBean(User.class).first();
            handle.createUpdate("INSERT INTO user_info(user_id, role) VALUES (?,?)").bind(0, user.getId()).bind(1, 1).execute();
            return null;
        });
    }
}