package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.RegisterDAO;

public class RegisterService {
    private static RegisterService registerService;

    public static RegisterService getInstance() {
        if (registerService == null) {
            registerService = new RegisterService();
        }
        return registerService;
    }
    // 5.2.2 Gọi phương thức checkUsernameAndEmailExists() từ RegisterDAO.
    public User checkUser(String username, String email) {
        // 5.2.5 Trả về kết quả kiểm tra cho RegisterService.
        return new RegisterDAO().checkUsernameAndEmailExists(username, email);
    }
    // 10.1.2.1.2 Gọi phương thức insertNewUser() từ RegisterDAO.
    public void insertNewUser(String username, String hashedPassword, String email) {
        new RegisterDAO().insertNewUser(username, hashedPassword, email);
    }
}