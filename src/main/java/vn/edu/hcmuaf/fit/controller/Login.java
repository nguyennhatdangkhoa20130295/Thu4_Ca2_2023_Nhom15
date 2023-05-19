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

        // Lấy giá trị của username và password từ yêu cầu POST
        String username = request.getParameter("uname");
        String password = request.getParameter("passw");
        System.out.println(username);
        System.out.println(password);

        // Gửi yêu cầu tới server Node.js
        String apiUrl = "http://localhost:5501/api/users/login";
        String requestBody = "username=" + username + "&password=" + password;

        // Gửi yêu cầu POST đến server Node.js
        HttpURLConnection connection = null;
        try {
            URL url = new URL(apiUrl);
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setDoOutput(true);

            DataOutputStream outputStream = new DataOutputStream(connection.getOutputStream());
            outputStream.writeBytes(requestBody);
            outputStream.flush();
            outputStream.close();

            // Đọc phản hồi từ server Node.js
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
            StringBuilder responseBuilder = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                responseBuilder.append(line);
            }
            reader.close();
            response.setCharacterEncoding("UTF-8");

            JSONObject jsonResponse = new JSONObject(responseBuilder.toString());
            if(responseBuilder.toString().contains("error")) {
                request.setAttribute("error", jsonResponse.getString("error"));
                request.getRequestDispatcher("login.jsp").forward(request, response);

            } else {
                User user = new User(jsonResponse.getInt("id"), jsonResponse.getString("username"),jsonResponse.getString("email"), jsonResponse.getInt("role"), jsonResponse.getInt("condition"));
                if(user.getCondition() == -1) {  // Trạng thái tài khoản bị khoá
                   request.setAttribute("error", "Tài khoản này đã bị khoá");
                   request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    session.setAttribute("user", user);
                    switch (user.getRole()) {
                        case 0: // Chuyển sang trang dành cho user
                            response.sendRedirect("http://localhost:8080/Thu4_Ca2_2023_Nhom15/");
                            break;
                        case 1: // Chuyển sang trang dành cho admin (Không có trang admin nên chuyển đỡ về trang user luôn)
                            response.sendRedirect("http://localhost:8080/Thu4_Ca2_2023_Nhom15/");
                            break;
                    }
                }

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
