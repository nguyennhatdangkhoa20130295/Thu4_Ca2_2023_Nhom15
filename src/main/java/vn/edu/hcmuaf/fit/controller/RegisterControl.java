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
    // 5. Xác thực thông tin đăng ký tài khoản người dùng đã nhập.
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
        // 5.1 Kiểm tra rỗng đối với thông tin người dùng nhập vào. Nếu không rỗng, tiếp tục thực hiện bước 5.2.
        // 5.1.1 Nếu thông tin rỗng, trang đăng ký hiển thị lỗi thông tin rỗng. Quay lại bước 3.
        if (username.equals("") && password.equals("") && confirmPassword.equals("") && email.equals("")) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        // 5.2 Kiểm tra tự tồn tại của tài khoản.
        // 5.2.1 Lấy User để kiểm tra User có tồn tại không dựa vào tên đăng nhập hoặc email qua phương thức checkUser().
        User user = RegisterService.getInstance().checkUser(username, email);
        // 5.2.6 Trả về kết quả kiểm tra cho RegisterControl.
        // 5.2.6.2 Nếu không tồn tại, kiểm tra regex validate thông tin nhập vào và mật khẩu xác nhận.
        if (user == null) {
            // 5.2.6.2.1 Regex validate các trường thông tin đã yêu cầu nhập hợp lệ và mật khẩu xác nhận trùng với mật khẩu thì tiếp tục bước 5.2.6.2.1.1.
            if (validateUsername(username) && validateEmail(email) && validatePassword(password) && validatePassword(confirmPassword) && confirmPassword.equals(password)) {
                // 5.2.6.2.1.2 Trả về mã xác thực 6 chữ số.
                String code = mailService.getRandom();
                // 5.2.6.2.1.3 Tạo đối tượng UserRegister.
                UserRegister userRegister = new UserRegister(username, email, hashPassword(password), code);
                // 5.2.6.2.1.4 Gửi email xác nhận tới địa chỉ email mà người dùng đã cung cấp.
                boolean test = mailService.sendEmail(userRegister);
                if (test) {
                    // 5.2.6.2.1.5 Lưu thông tin vào session.
                    HttpSession session = request.getSession();
                    session.setAttribute("authcode", userRegister);
                    // 6. Chuyến hướng đến trang Nhập mã xác thực.
                    response.sendRedirect("verify_register.jsp");
                } else {
                    System.out.println("Gửi mã qua email không thành công");
                }
                // 5.2.6.2.2 Regex validate không hợp lệ và mật khẩu xác nhận không trùng với mật khẩu. Trang đăng ký hiển thị lỗi.
            } else {
                // 5.2.6.2.2.1 Tên đăng nhập không đúng với yêu cầu, trang đăng ký hiển thị lỗi “Tên đăng nhập không hợp lệ”. Quay lại bước 3.
                if (!validateUsername(username)) {
                    request.setAttribute("errorUsername", "Tên đăng nhập không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
                // 5.2.6.2.2.2 Email không đúng định dạng, yêu cầu, trang đăng ký hiển thị lỗi “Email không hợp lệ”. Quay lại bước 3.
                if (!validateEmail(email)) {
                    request.setAttribute("errorEmail", "Email không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
                // 5.2.6.2.2.3 Mật khẩu không đúng với yêu cầu định dạng, trang đăng ký hiển thị lỗi “Mật khẩu không hợp lệ”. Quay lại bước 3.
                if (!validatePassword(password)) {
                    request.setAttribute("errorPassword", "Mật khẩu không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
                // 5.2.6.2.2.4 Mật khẩu xác nhận không đúng với yêu cầu định dạng, trang đăng ký hiển thị lỗi “Mật khẩu xác nhận không hợp lệ”. Quay lại bước 3.
                if (!validatePassword(confirmPassword)) {
                    request.setAttribute("errorConfirmPass", "Mật khẩu nhập lại không hợp lệ");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    // 5.2.6.2.2.5 Mật khẩu xác nhận không trùng khớp với mật khẩu, trang đăng ký hiển thị lỗi “Mật khẩu nhập lại không đúng”. Quay lại bước 3.
                } else if (!confirmPassword.equals(password)) {
                    request.setAttribute("errorConfirmPass", "Mật khẩu nhập lại không đúng");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            }
            // 5.2.6.1 Nếu tồn tại, kiểm tra lỗi cụ thể.
        } else {
            // 5.2.6.1.1 Tên đăng nhập đã tồn tại, hệ thống sẽ hiển thị lỗi “Tên đăng nhập đã tồn tại”.
            if (username.equals(user.getUsername())) {
                request.setAttribute("errorUsername", "Tên đăng nhập đã tồn tại");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                // 5.2.6.1.2. Email đã được sử dụng, hệ thống hiển thị lỗi “Email đã được sử dụng”.
            } else if (email.equals(user.getEmail())) {
                request.setAttribute("errorEmail", "Email đã được sử dụng");
                request.getRequestDispatcher("register.jsp").forward(request, response);
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