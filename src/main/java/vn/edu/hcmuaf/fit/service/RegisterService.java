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

    public User checkUser(String username, String email) {
        return new RegisterDAO().checkUsernameAndEmailExists(username, email);
    }

    public void insertNewUser(String username, String hashedPassword, String email) {
        new RegisterDAO().insertNewtUser(username, hashedPassword, email);
    }
}
