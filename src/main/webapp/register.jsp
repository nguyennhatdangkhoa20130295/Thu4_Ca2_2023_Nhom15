<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng ký</title>

    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/feather.css">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        .main-wrap {
            padding-top: 96px;
            padding-bottom: 20px;
        }

        .note {
            margin: 10px 0 10px 10px;
            font-size: 15px;
            color: #5f6368;
        }
    </style>
</head>

<body class="color-theme-blue loaded">

<div class="preloader" style="display: none;"></div>
<%@include file="header.jsp" %>
<%--2. Chuyển đến trang đăng ký.--%>
<div class="main-wrap">
    <div class="row">
        <div class="col-xl-5 d-none d-xl-block p-0 bg-image-cover bg-no-repeat"
             style="background-image: url(images/login-bg-2.jpg);"></div>
        <div class="col-xl-7 align-items-center d-flex bg-white rounded-3 overflow-hidden">
            <div class="card shadow-none border-0 ms-auto me-auto login-card">
                <div class="card-body rounded-0 text-left">
                    <h2 class="fw-700 display1-size display2-md-size mb-4">Tạo <br>tài khoản của bạn</h2>
<%--                    2.1 Hiển thị form đăng ký tài khoản gồm các trường thông tin: Tên đăng nhập, email, mật khẩu, xác nhận mật khẩu.--%>
                    <form action="register" method="post">
                        <div class="form-group icon-input mb-3">
                            <i class="font-sm ti-user text-grey-500 pe-0"></i>
<%--                            3. Nhập các thông tin yêu cầu.--%>
                            <input type="text" name="username" maxlength="30"
                                   class="style2-input ps-5 form-control text-grey-900 font-xsss fw-600"
                                   placeholder="Tên đăng nhập" required>
                            <%if (request.getAttribute("errorUsername") != null) {%>
                            <div class="note" style="color: red"><span><%=request.getAttribute("errorUsername")%></span>
                            </div>
                            <%} else {%>
                            <div class="note"><span>Bạn có thể sử dụng chữ cái, số và dấu gạch dưới</span></div>
                            <%}%>
                        </div>
                        <div class="form-group icon-input mb-3">
                            <i class="font-sm ti-email text-grey-500 pe-0"></i>
                            <input type="email" name="email"
                                   class="style2-input ps-5 form-control text-grey-900 font-xsss fw-600"
                                   placeholder="Email của bạn" required>
                            <p style="color: red; margin: 10px 0 10px 10px;"><%=request.getAttribute("errorEmail") != null ? request.getAttribute("errorEmail") : ""%>
                            </p>
                        </div>
                        <div class="form-group icon-input mb-3">
                            <input type="password" name="password" maxlength="16"
                                   class="style2-input ps-5 form-control text-grey-900 font-xss ls-3"
                                   placeholder="Mật khẩu" required>
                            <i class="font-sm ti-lock text-grey-500 pe-0"></i>
                            <%if (request.getAttribute("errorPassword") != null) {%>
                            <div class="note" style="color: red"><span><%=request.getAttribute("errorPassword")%></span>
                            </div>
                            <%} else {%>
                            <div class="note"><span>Sử dụng 8 ký tự trở lên với ít nhất một chữ cái viết hoa, một chữ cái viết thường, một số và một ký tự đặc biệt</span>
                            </div>
                            <%}%>
                        </div>
                        <div class="form-group icon-input mb-3">
                            <input type="password" name="confirm_pass" maxlength="16"
                                   class="style2-input ps-5 form-control text-grey-900 font-xss ls-3"
                                   placeholder="Xác nhận mật khẩu" required>
                            <i class="font-sm ti-lock text-grey-500 pe-0"></i>
                            <p style="color: red; margin: 10px 0 10px 10px;"><%=request.getAttribute("errorConfirmPass") != null ? request.getAttribute("errorConfirmPass") : ""%>
                            </p>
                        </div>
                        <p style="color: red; margin: 10px 0 10px 10px;"><%=request.getAttribute("error") != null ? request.getAttribute("error") : ""%>
                        <div class="form-group mb-3">
<%--                        4. Nhấn chọn nút “Đăng ký”.--%>
                            <button type="submit"
                                    class="mt-3 form-control text-center style2-input text-white fw-600 bg-dark border-0 p-0">
                                Đăng ký
                            </button>
                        </div>
                    </form>
                    <div class="col-sm-12 p-0 text-left">
                        <h6 class="text-grey-500 font-xsss fw-500 mt-0 mb-0 lh-32">Bạn đã có tài khoản?<a
                                href="login.jsp" class="fw-700 ms-1">Đăng nhập</a></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>

<script src="js/plugin.js"></script>
<script src="js/scripts.js"></script>


</body>
</html>