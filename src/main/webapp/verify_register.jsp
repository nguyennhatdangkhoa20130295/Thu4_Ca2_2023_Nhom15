<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/20/2023
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="main-wrap">
    <div class="row">
        <div class="col-xl-5 d-none d-xl-block p-0 vh-100 bg-image-cover bg-no-repeat"
             style="background-image: url(images/login-bg-2.jpg);"></div>
        <div class="col-xl-7 vh-100 align-items-center d-flex bg-white rounded-3 overflow-hidden">
            <div class="card shadow-none border-0 ms-auto me-auto login-card">
                <div class="card-body rounded-0 text-left">
                    <h2 class="fw-700 display1-size display2-md-size mb-4">Nhập mã xác thực đăng ký tài khoản</h2>
                    <form action="verify_register" method="post">
                        <div class="form-group icon-input mb-3">
                            <i class="font-sm ti-user text-grey-500 pe-0"></i>
                            <input type="text" name="authcode"
                                   class="style2-input ps-5 form-control text-grey-900 font-xsss fw-600"
                                   placeholder="Nhập mã vào ô này">
                            <p style="color: red; margin-top: 10px;"><%=request.getAttribute("errorVerify") != null ? request.getAttribute("errorVerify") : ""%>
                                <button type="submit"
                                        class="mt-3 form-control text-center style2-input text-white fw-600 bg-dark border-0 p-0">
                                    Xác nhận
                                </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
