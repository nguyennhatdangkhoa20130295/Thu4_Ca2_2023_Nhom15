<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"
      class=" sizes customelements history pointerevents postmessage webgl websockets cssanimations csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox picture srcset webworkers">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Đăng nhập</title>

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

<body class="color-theme-blue loaded">

<div class="preloader" style="display: none;"></div>
<<<<<<< HEAD
<%@include file="header.jsp" %>
=======
<%@include file="header.jsp"%>
<% String error = (String) request.getAttribute("error");
    if(error != null) System.out.println(error);%>
>>>>>>> fe5346a683ae80454c4bb1b9d37cfcf02614a6a2
<div class="main-wrap">
  <div class="row">
    <div class="col-xl-5 d-none d-xl-block p-0 vh-100 bg-image-cover bg-no-repeat"
         style="background-image: url(images/login-bg.jpg);"></div>
    <div class="col-xl-7 vh-100 align-items-center d-flex bg-white rounded-3 overflow-hidden">
      <div class="card shadow-none border-0 ms-auto me-auto login-card">
        <div class="card-body rounded-0 text-left">
          <h2 class="fw-700 display1-size display2-md-size mb-3">Đăng nhập vào <br>tài khoản của bạn</h2>
          <form form action="/Thu4_Ca2_2023_Nhom15/login" method="post">

            <div class="form-group icon-input mb-3">
              <i class="font-sm ti-email text-grey-500 pe-0"></i>
              <input name="uname" type="text"
                     class="style2-input ps-5 form-control text-grey-900 font-xsss fw-600"
                     placeholder="Username">
            </div>
            <div class="form-group icon-input mb-1">
              <input name="passw" type="Password"
                     class="style2-input ps-5 form-control text-grey-900 font-xss ls-3"
                     placeholder="Password">
              <i class="font-sm ti-lock text-grey-500 pe-0"></i>
            </div>
            <div class=" text-left mb-3">
<<<<<<< HEAD
              <div class="form-group mb-1">
                <button type="submit"
                        class="form-control text-center style2-input text-white fw-600 bg-dark border-0 p-0 ">
                  Login
                </button>
              </div>
=======
              <div class="form-group mb-1"><button type="submit" class="form-control text-center style2-input text-white fw-600 bg-dark border-0 p-0 ">Đăng nhập</button></div>
>>>>>>> fe5346a683ae80454c4bb1b9d37cfcf02614a6a2
            </div>
          </form>
<%--          1. Nhấn chọn liên kết Đăng ký.--%>
          <div class="col-sm-12 p-0 text-left">
<<<<<<< HEAD
            <h6 class="text-grey-500 font-xsss fw-500 mt-0 mb-0 lh-32">Dont have account <a
                    href="register.jsp" class="fw-700 ms-1">Register</a></h6>
          </div>
          <div class="col-sm-12 p-0 text-center mt-2">

            <h6 class="mb-0 d-inline-block bg-white fw-500 font-xsss text-grey-500 mb-3">Or, Sign in with
              your social account </h6>
            <div class="form-group mb-1"><a href="#"
                                            class="form-control text-left style2-input text-white fw-600 bg-facebook border-0 p-0 mb-2"><img
                    src="images/icon-1.png" alt="icon" class="ms-2 w40 mb-1 me-5"> Sign in with Google</a>
            </div>
            <div class="form-group mb-1"><a href="#"
                                            class="form-control text-left style2-input text-white fw-600 bg-twiiter border-0 p-0 "><img
                    src="images/icon-3.png" alt="icon" class="ms-2 w40 mb-1 me-5"> Sign in with Facebook</a>
            </div>
=======
            <h6 class="text-grey-500 font-xsss fw-500 mt-0 mb-0 lh-32">Chưa có tài khoản <a href="register.jsp" class="fw-700 ms-1">Đăng ký</a></h6>
          </div>
          <div class="col-sm-12 p-0 text-center mt-2">

            <h6 class="mb-0 d-inline-block bg-white fw-500 font-xsss text-grey-500 mb-3">Hoặc đăng nhập bằng các tài khoản khác</h6>
            <div class="form-group mb-1"><a href="#" class="form-control text-left style2-input text-white fw-600 bg-facebook border-0 p-0 mb-2"><img src="images/icon-1.png" alt="icon" class="ms-2 w40 mb-1 me-5"> Đăng nhập với Google</a></div>
            <div class="form-group mb-1"><a href="#" class="form-control text-left style2-input text-white fw-600 bg-twiiter border-0 p-0 "><img src="images/icon-3.png" alt="icon" class="ms-2 w40 mb-1 me-5"> Đăng nhập với Facebook</a></div>
>>>>>>> fe5346a683ae80454c4bb1b9d37cfcf02614a6a2
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- <%@include file="footer.jsp"%> -->
<<<<<<< HEAD
=======

<!-- Modal Login -->



<script>
  <%if(error != null) {%>
    alert('<%=error.toString()%>')
  <%}%>
</script>
>>>>>>> fe5346a683ae80454c4bb1b9d37cfcf02614a6a2
<script src="js/plugin.js"></script>
<script src="js/scripts.js"></script>

</body>

<<<<<<< HEAD
</body>
=======
>>>>>>> fe5346a683ae80454c4bb1b9d37cfcf02614a6a2
</html>