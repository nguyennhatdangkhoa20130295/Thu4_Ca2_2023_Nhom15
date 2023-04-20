package vn.edu.hcmuaf.fit.controller;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.bean.UserRegister;
import vn.edu.hcmuaf.fit.service.MailService;
import vn.edu.hcmuaf.fit.service.RegisterService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "RegisterControl", value = "/register")
public class RegisterControl extends HttpServlet {

    private Pattern usernamePattern = Pattern.compile("^[a-zA-Z0-9_]{8,30}$");
    private Pattern passwordPattern = Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,16}$");
    private Pattern emailPattern = Pattern.compile("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_pass");
        MailService mailService = new MailService();
        String code = mailService.getRandom();
        if (username.equals("") && password.equals("") && confirmPassword.equals("") && email.equals("")) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        User user = RegisterService.getInstance().checkUser(username, email);
        if (user == null) {
            if (validateUsername(username) && validateEmail(email) && validatePassword(password) && validatePassword(confirmPassword) && confirmPassword.equals(password)) {
                UserRegister userRegister = new UserRegister(username, email, password, code);
                boolean test = mailService.sendEmail(userRegister);
                if (test) {
                    HttpSession session = request.getSession();
                    session.setAttribute("authcode", userRegister);
                    response.sendRedirect("verify_register.jsp");
                } else {
                    System.out.println("Gửi mã qua email thành công");
                }
            } else {
                if (username.equals("")) {
                    request.setAttribute("errorUsername", "Vui lòng nhập tên đăng nhập");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                } else if (username.length() < 8 || username.length() > 30) {
                    request.setAttribute("errorUsername", "Xin lỗi tên đăng nhập phải nằm trong khoảng độ dài ký tự giữa 8 và 30");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                } else if (!validateUsername(username)) {
                    request.setAttribute("errorUsername", "Tên đăng nhập không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
                if (email.equals("")) {
                    request.setAttribute("errorEmail", "Vui lòng nhập email");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                } else if (!validateEmail(email)) {
                    request.setAttribute("errorEmail", "Email không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
                if (password.equals("")) {
                    request.setAttribute("errorPassword", "Vui lòng nhập mật khẩu");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                } else if (password.length() < 8 || password.length() > 16) {
                    request.setAttribute("errorPassword", "Sử dụng 8 - 16 ký tự cho mật khẩu của bạn");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                } else if (!validatePassword(password)) {
                    request.setAttribute("errorPassword", "Mật khẩu không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
                if (confirmPassword.equals("")) {
                    request.setAttribute("errorConfirmPass", "Vui lòng nhập mật khẩu xác nhận");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                } else if (!validatePassword(confirmPassword)) {
                    request.setAttribute("errorConfirmPass", "Mật khẩu nhập lại không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                } else if (!confirmPassword.equals(password)) {
                    request.setAttribute("errorConfirmPass", "Mật khẩu nhập không đúng");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
            }
        } else {
            if (username.equals(user.getUsername())) {
                request.setAttribute("errorUsername", "Tên đăng nhập đã tồn tại");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            } else if (email.equals(user.getEmail())) {
                request.setAttribute("errorEmail", "Email đã được sử dụng");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }
        }

    }

    private boolean validateUsername(String username) {
        Matcher matcher = usernamePattern.matcher(username);
        return matcher.matches();
    }

    private boolean validatePassword(String password) {
        Matcher matcher = passwordPattern.matcher(password);
        return matcher.matches();
    }

    private boolean validateEmail(String email) {
        Matcher matcher = emailPattern.matcher(email);
        return matcher.matches();
    }

    private String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
}