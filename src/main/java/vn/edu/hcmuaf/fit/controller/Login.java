package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

@WebServlet(name = "Login", value = "/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // 6.Hệ thống lấy ra thông tin username và password từ form của người dùng nhập vào
        String username = request.getParameter("uname");
        String password = request.getParameter("passw");
        // end 6


        String apiUrl = "http://localhost:5501/api/users/login";
        String requestBody = "username=" + username + "&password=" + password;

        HttpURLConnection connection = null;
        try {
            // 7.	Gửi yêu cầu đến login đến api login kèm theo thông tin username và password với method post
            URL url = new URL(apiUrl);
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setDoOutput(true);

            DataOutputStream outputStream = new DataOutputStream(connection.getOutputStream());
            outputStream.writeBytes(requestBody);
            outputStream.flush();
            outputStream.close();
            // end 7

            // 8.	Servlet đọc phản hồi từ server và lưu kết quả vào JSONObject
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
            StringBuilder responseBuilder = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                responseBuilder.append(line);
            }
            reader.close();
            response.setCharacterEncoding("UTF-8");
            JSONObject jsonResponse = new JSONObject(responseBuilder.toString());
            // end 8

            // 9.	Nếu kết quả phản hồi có chứa error thì request gửi error này trở lại trang login.jsp và hiển thị
            if(responseBuilder.toString().contains("error")) {
                request.setAttribute("error", jsonResponse.getString("error"));
                request.getRequestDispatcher("login.jsp").forward(request, response);
            // end 9

             // 10.	Nếu kết quả phản hồi không chứa error thì hệ thống tạo ra 1 đối tượng User và lưu các thông tin được trả về
             } else {
                User user = new User(jsonResponse.getInt("id"), jsonResponse.getString("username"),jsonResponse.getString("email"), jsonResponse.getInt("role"), jsonResponse.getInt("condition"));
             // end 10

                // 11.	Nếu tài khoản bị khoá hệ thống sẽ gửi thông tin này trở lại trang login.jsp và hiển thị
                if(user.getCondition() == -1) {  // Trạng thái tài khoản bị khoá
                   request.setAttribute("error", "Tài khoản này đã bị khoá");
                   request.getRequestDispatcher("login.jsp").forward(request, response);
                   // end 11


                    //12.	Nếu tài khoản không bị khoá thì hệ thống lưu user này lên sesstion
                } else {
                    session.setAttribute("user", user);
                    switch (user.getRole()) {
                        // 12.1.	Nếu user là tài khoản thường (role = 0) thì chuyển về trang index.jsp
                        case 0: // Chuyển sang trang dành cho user
                            response.sendRedirect("http://localhost:8080/Thu4_Ca2_2023_Nhom15/");
                            break;
                            //12.2.	Nếu user là tài khoản admin (role = 1) thì chuyển về trang admin.jsp
                        case 1: // Chuyển sang trang dành cho admin (Không có trang admin nên chuyển đỡ về trang user luôn)
                            response.sendRedirect("http://localhost:8080/Thu4_Ca2_2023_Nhom15/");
                            break;
                    }
                }
                // end 12

            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.disconnect();
            }
        }
    }
}
