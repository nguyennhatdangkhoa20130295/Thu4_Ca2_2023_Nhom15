package vn.edu.hcmuaf.fit.controller;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.hcmuaf.fit.bean.UserRegister;
import vn.edu.hcmuaf.fit.dao.RegisterDAO;
import vn.edu.hcmuaf.fit.service.RegisterService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "VerifyRegister", value = "/verify_register")
public class VerifyRegister extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            UserRegister userRegister = (UserRegister) session.getAttribute("authcode");
            String code = request.getParameter("authcode");
            // 10. VerifyRegister kiếm tra mã xác thực đã nhập.
            // 10.1 Kiểm tra rỗng đối với mã xác thực.
            // 10.1.1 Nếu rỗng thì hiển thị lỗi đối với mã xác thực và quay lại bước 8.
            if (code.equals("")) {
                request.setAttribute("errorVerify", "Vui lòng nhập mã xác thực");
                request.getRequestDispatcher("verify_register.jsp").forward(request, response);
                // 10.1.2 Nếu không rỗng thì kiếm tra sự trùng khớp của mã xác thực.
            } else {
                // 10.1.2.1 Mã xác thực trùng khớp thì tiếp tục bước 11.
                if (code.equals(userRegister.getCode())) {
                    // 11. Tài khoản đã được đăng ký. Thông báo người dùng đã tạo tài khoản thành công.
                    RegisterService registerService = RegisterService.getInstance();
                    registerService.insertNewUser(userRegister.getUsername(), BCrypt.hashpw(userRegister.getPassword(), BCrypt.gensalt()), userRegister.getEmail());
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Đăng kí tài khoản thành công');");
                    // 12. Chuyển hướng đến trang Đăng nhập.
                    out.println("location='login.jsp';");
                    out.println("</script>");
                    // 10.1.2.2 Mã xác thực không trùng khớp, hiển thị lỗi và quay lại bước 8.
                } else {
                    request.setAttribute("errorVerify", "Mã xác thực không đúng");
                    request.getRequestDispatcher("verify_register.jsp").forward(request, response);
                }
            }
        }
    }

    public static void main(String[] args) {
        System.out.println(BCrypt.hashpw("123456789", BCrypt.gensalt()));
        System.out.println(BCrypt.checkpw("123456789", "$2a$10$QbDRao5.k93ADs4crzvaA.D.nBXoybbRmlYVZX6w1a/jHN.eYmAC6"));
    }
}