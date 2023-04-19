<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"
      class=" sizes customelements history pointerevents postmessage webgl websockets cssanimations csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox picture srcset webworkers">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sociala - Social Network App HTML Template </title>

    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/feather.css">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        .main-content{
            padding-left: 0;
        }
    </style>

</head>

<body class="color-theme-blue mont-font loaded">

<div class="preloader" style="display: none;"></div>

<!-- navigation top-->
<%@include file="header.jsp" %>
<!-- navigation top -->
<div class="main-wrapper">
    <!-- navigation left -->
<%--    <%@include file="navigation_left.jsp" %>--%>
    <!-- navigation left -->
    <!-- main content -->
    <div class="main-content bg-lightblue theme-dark-bg right-chat-active">

        <div class="middle-sidebar-bottom">
            <div class="middle-sidebar-left">
                <div class="middle-wrap">
                    <div class="card w-100 border-0 bg-white shadow-xs p-0 mb-4">

                        <div class="card-body p-lg-5 p-4 w-100 border-0">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h4 class="mb-4 font-xxl fw-700 mont-font mb-lg-5 mb-4 font-md-xs">Settings</h4>
                                    <div class="nav-caption fw-600 font-xssss text-grey-500 mb-2">Genaral</div>
                                    <ul class="list-inline mb-4">
                                        <li class="list-inline-item d-block border-bottom me-0"><a
                                                href="account-information.jsp"
                                                class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-primary-gradiant text-white feather-home font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">Acount Information</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>
                                        <li class="list-inline-item d-block border-bottom me-0"><a
                                                href="contact-information.html"
                                                class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-gold-gradiant text-white feather-map-pin font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">Saved Address</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>
                                        <li class="list-inline-item d-block me-0"><a href="social.html"
                                                                                     class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-red-gradiant text-white feather-twitter font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">Social Acount</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>
                                    </ul>

                                    <div class="nav-caption fw-600 font-xsss text-grey-500 mb-2">Acount</div>
                                    <ul class="list-inline mb-4">
                                        <li class="list-inline-item d-block border-bottom me-0"><a href="payment.html"
                                                                                                   class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-mini-gradiant text-white feather-credit-card font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">My Cards</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>
                                        <li class="list-inline-item d-block  me-0"><a href="password.html"
                                                                                      class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-blue-gradiant text-white feather-inbox font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">Password</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>

                                    </ul>

                                    <div class="nav-caption fw-600 font-xsss text-grey-500 mb-2">Other</div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item d-block border-bottom me-0"><a
                                                href="default-notification.html"
                                                class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-gold-gradiant text-white feather-bell font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">Notification</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>
                                        <li class="list-inline-item d-block border-bottom me-0"><a href="help-box.html"
                                                                                                   class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-primary-gradiant text-white feather-help-circle font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">Help</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>
                                        <li class="list-inline-item d-block me-0"><a href="#"
                                                                                     class="pt-2 pb-2 d-flex align-items-center"><i
                                                class="btn-round-md bg-red-gradiant text-white feather-lock font-md me-3"></i>
                                            <h4 class="fw-600 font-xsss mb-0 mt-0">Logout</h4><i
                                                    class="ti-angle-right font-xsss text-grey-500 ms-auto mt-3"></i></a>
                                        </li>

                                    </ul>
                                </div>
                            </div>


                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <!-- main content -->

    <!-- right chat -->
    <!-- right chat -->
    <div class="right-chat nav-wrap mt-2 right-scroll-bar">
        <div class="middle-sidebar-right-content bg-white shadow-xss rounded-xxl">

            <!-- loader wrapper -->
            <div class="preloader-wrap p-3" style="display: none;">
                <div class="box shimmer">
                    <div class="lines">
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                    </div>
                </div>
                <div class="box shimmer mb-3">
                    <div class="lines">
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                    </div>
                </div>
                <div class="box shimmer">
                    <div class="lines">
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                        <div class="line s_shimmer"></div>
                    </div>
                </div>
            </div>
            <!-- loader wrapper -->

            <div class="section full pe-3 ps-4 pt-4 position-relative feed-body">
                <h4 class="font-xsssss text-grey-500 text-uppercase fw-700 ls-3">CONTACTS</h4>
                <ul class="list-group list-group-flush">
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-8.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Hurin
                                Seary</a>
                        </h3>
                        <span class="badge badge-primary text-white badge-pill fw-500 mt-0">2</span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-7.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Victor
                                Exrixon</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-6.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Surfiya
                                Zakir</a>
                        </h3>
                        <span class="bg-warning ms-auto btn-round-xss"></span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-5.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Goria
                                Coast</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-4.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Hurin
                                Seary</a>
                        </h3>
                        <span class="badge mt-0 text-grey-500 badge-pill pe-0 font-xsssss">4:09 pm</span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-3.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">David
                                Goria</a>
                        </h3>
                        <span class="badge mt-0 text-grey-500 badge-pill pe-0 font-xsssss">2 days</span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-2.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Seary
                                Victor</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
                        <figure class="avatar float-left mb-0 me-2">
                            <img src="images/user-12.png" alt="image" class="w35">
                        </figure>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Ana
                                Seary</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>

                </ul>
            </div>
            <div class="section full pe-3 ps-4 pt-4 pb-4 position-relative feed-body">
                <h4 class="font-xsssss text-grey-500 text-uppercase fw-700 ls-3">GROUPS</h4>
                <ul class="list-group list-group-flush">
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

                        <span class="btn-round-sm bg-primary-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Studio
                                Express</a>
                        </h3>
                        <span class="badge mt-0 text-grey-500 badge-pill pe-0 font-xsssss">2 min</span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

                        <span class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Armany
                                Design</a>
                        </h3>
                        <span class="bg-warning ms-auto btn-round-xss"></span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

                        <span class="btn-round-sm bg-mini-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">De
                                fabous</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>
                </ul>
            </div>
            <div class="section full pe-3 ps-4 pt-0 pb-4 position-relative feed-body">
                <h4 class="font-xsssss text-grey-500 text-uppercase fw-700 ls-3">Pages</h4>
                <ul class="list-group list-group-flush">
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

                        <span class="btn-round-sm bg-primary-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Armany
                                Seary</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

                        <span class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Entropio
                                Inc</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>

                </ul>
            </div>

        </div>
    </div>


    <!-- right chat -->

    <div class="app-footer border-0 shadow-lg bg-primary-gradiant">
        <a href="index.html" class="nav-content-bttn nav-center"><i class="feather-home"></i></a>
        <a href="default-video.html" class="nav-content-bttn"><i class="feather-package"></i></a>
        <a href="default-live-stream.html" class="nav-content-bttn" data-tab="chats"><i class="feather-layout"></i></a>
        <a href="shop-2.html" class="nav-content-bttn"><i class="feather-layers"></i></a>
        <a href="default-settings.jsp" class="nav-content-bttn"><img src="images/female-profile.png" alt="user"
                                                                     class="w30 shadow-xss"></a>
    </div>

    <div class="app-header-search">
        <form class="search-form">
            <div class="form-group searchbox mb-0 border-0 p-1">
                <input type="text" class="form-control border-0" placeholder="Search...">
                <i class="input-icon">
                    <ion-icon name="search-outline" role="img" class="md hydrated"
                              aria-label="search outline"></ion-icon>
                </i>
                <a href="#" class="ms-1 mt-1 d-inline-block close searchbox-close">
                    <i class="ti-close font-xs"></i>
                </a>
            </div>
        </form>
    </div>

</div>
<%@include file="footer.jsp" %>
<script src="js/plugin.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>