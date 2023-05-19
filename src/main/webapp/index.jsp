<%@ page import="vn.edu.hcmuaf.fit.dao.BlogDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.bean.Blog" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang chủ</title>

    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/feather.css">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/emoji.css">

    <link rel="stylesheet" href="css/lightbox.css">
</head>

<body class="color-theme-blue mont-font loaded">

<div class="preloader" style="display: none;"></div>

<!-- navigation top-->
<%@include file="header.jsp"%>
<!-- navigation top -->
<div class="main-wrapper">

    <!-- navigation left -->
    <%@include file="navigation_left.jsp"%>
    <div class="main-content right-chat-active">

        <div class="middle-sidebar-bottom">
            <div class="middle-sidebar-left">
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
                <div class="row feed-body">
                    <div class="col-xl-8 col-xxl-9 col-lg-8">
                        <div class="card w-100 shadow-xss rounded-xxl border-0 ps-4 pt-4 pe-4 pb-3 mb-3">
                            <div class="card-body p-0">
                                <a href="create-blog.jsp"
                                   class=" font-xssss fw-600 text-grey-500 card-body p-0 d-flex align-items-center"><i
                                        class="btn-round-sm font-xs text-primary feather-edit-3 me-2 bg-greylight"></i>Tạo
                                    bài viết</a>
                            </div>
                            <div class="card-body p-0 mt-3 position-relative">
                                <figure class="avatar position-absolute ms-2 mt-1 top-5">
                                    <img src="images/user-8.png" alt="image" class="shadow-sm rounded-circle w30">
                                </figure>
                                <textarea name="message"
                                          class="h100 bor-0 w-100 rounded-xxl p-2 ps-5 font-xssss text-grey-500 fw-500 border-light-md theme-dark-bg"
                                          cols="30" rows="10" placeholder="Bạn đang nghĩ gì vậy?"></textarea>
                            </div>
                        </div>

                        <%
                            List<Blog> listBlog = new BlogDAO().listBlog();
                            for(Blog b : listBlog){
                        %>

                        <div class="card w-100 shadow-xss rounded-xxl border-0 p-4 mb-0">
                            <div class="card-body p-0 d-flex">
                                <figure class="avatar me-3"><img src="images/user-8.png" alt="image"
                                                                 class="shadow-sm rounded-circle w45"></figure>
                                <h4 class="fw-700 text-grey-900 font-xssss mt-1">Anthony Daugloi <span
                                        class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500"><%=b.getCreated_at()%></span>
                                </h4>
                                <a href="#" class="ms-auto"><i
                                        class="ti-more-alt text-grey-900 btn-round-md bg-greylight font-xss"></i></a>
                            </div>
                            <div class="card-body p-0 me-lg-5">
                                <p class="fw-500 text-grey-500 lh-26 font-xssss w-100 mb-2"><%=b.getDescription()%></p>
                            </div>
                            <div class="card-body d-block p-0 mb-3">
                                <div class="row ps-2 pe-2">
                                    <div class="col-sm-12 p-1"><a href="images/t-30.jpg" data-lightbox="roadtr"><img
                                            src="<%=b.getimage()%>" class="rounded-3 w-100" alt="image"></a></div>
                                </div>
                            </div>
                            <div class="card-body d-flex p-0">
                                <a href="#"
                                   class="emoji-bttn d-flex align-items-center fw-600 text-grey-900 text-dark lh-26 font-xssss me-2"><i
                                        class="feather-thumbs-up text-white bg-primary-gradiant me-1 btn-round-xs font-xss"></i>
                                    <i class="feather-heart text-white bg-red-gradiant me-2 btn-round-xs font-xss"></i>0K
                                    Thích</a>
                                <a href="#"
                                   class="d-flex align-items-center fw-600 text-grey-900 text-dark lh-26 font-xssss"><i
                                        class="feather-message-circle text-dark text-grey-900 btn-round-sm font-lg"></i><span
                                        class="d-none-xss">0 Bình luận</span></a>
                                <a href="#"
                                   class="ms-auto d-flex align-items-center fw-600 text-grey-900 text-dark lh-26 font-xssss"><i
                                        class="feather-share-2 text-grey-900 text-dark btn-round-sm font-lg"></i><span
                                        class="d-none-xs">Chia sẻ</span></a>
                            </div>
                        </div>
                        <%}%>

<%--                        <div class="card w-100 text-center shadow-xss rounded-xxl border-0 p-4 mb-3 mt-3">--%>
<%--                            <div class="snippet mt-2 ms-auto me-auto" data-title=".dot-typing">--%>
<%--                                <div class="stage">--%>
<%--                                    <div class="dot-typing"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>


                    </div>
                    <div class="col-xl-4 col-xxl-3 col-lg-4 ps-lg-0">
                        <div class="card w-100 shadow-xss rounded-xxl border-0 p-0 ">
                            <div class="card-body d-flex align-items-center p-4 mb-0">
                                <h4 class="fw-700 mb-0 font-xssss text-grey-900">Gợi ý theo dõi chủ đề</h4>
                                <a href="#" class="fw-600 ms-auto font-xssss text-primary">Xem tất cả</a>
                            </div>
                            <div class="card-body bg-transparent-card d-flex p-3 bg-greylight ms-3 me-3 rounded-3">
                                <h4 class="fw-700 text-grey-900 font-xssss mt-2">Đồ điện tử<span
                                        class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">1.2K người theo dõi</span>
                                </h4>
                                <a href="#"
                                   class="btn-round-sm bg-white text-grey-900 feather-plus font-xss ms-auto mt-2"></a>
                            </div>
                            <div class="card-body bg-transparent-card d-flex p-3 bg-greylight m-3 rounded-3"
                                 style="margin-bottom: 0 !important;">
                                <h4 class="fw-700 text-grey-900 font-xssss mt-2">Custom bàn phím cơ <span
                                        class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">2.5K người theo dõi</span>
                                </h4>
                                <a href="#"
                                   class="btn-round-sm bg-white text-grey-900 feather-plus font-xss ms-auto mt-2"></a>
                            </div>
                            <div class="card-body bg-transparent-card d-flex p-3 bg-greylight m-3 rounded-3">
                                <h4 class="fw-700 text-grey-900 font-xssss mt-2">Laptop gaming<span
                                        class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">2.1K người theo dõi</span>
                                </h4>
                                <a href="#"
                                   class="btn-round-sm bg-white text-grey-900 feather-plus font-xss ms-auto mt-2"></a>
                            </div>

                        </div>

                        <div class="card w-100 shadow-xss rounded-xxl border-0 mb-3 mt-3">
                            <div class="card-body d-flex align-items-center p-4">
                                <h4 class="fw-700 mb-0 font-xssss text-grey-900">Suggest Pages</h4>
                                <a href="#" class="fw-600 ms-auto font-xssss text-primary">See
                                    all</a>
                            </div>
                            <div class="card-body d-flex pt-4 ps-4 pe-4 pb-0 overflow-hidden border-top-xs bor-0">
                                <img src="images/g-2.jpg" alt="img" class="img-fluid rounded-xxl mb-2">
                            </div>
                            <div class="card-body d-flex align-items-center pt-0 ps-4 pe-4 pb-4">
                                <a href="#"
                                   class="p-2 lh-28 w-100 bg-grey text-grey-800 text-center font-xssss fw-700 rounded-xl"><i
                                        class="feather-external-link font-xss me-2"></i> Thích trang</a>
                            </div>

                            <div class="card-body d-flex pt-0 ps-4 pe-4 pb-0 overflow-hidden">
                                <img src="images/g-3.jpg" alt="img" class="img-fluid rounded-xxl mb-2 bg-lightblue">
                            </div>
                            <div class="card-body d-flex align-items-center pt-0 ps-4 pe-4 pb-4">
                                <a href="#"
                                   class="p-2 lh-28 w-100 bg-grey text-grey-800 text-center font-xssss fw-700 rounded-xl"><i
                                        class="feather-external-link font-xss me-2"></i> Thích trang</a>
                            </div>


                        </div>


                        <div class="card w-100 shadow-xss rounded-xxl border-0 mb-3">
                            <div class="card-body d-flex align-items-center  p-4">
                                <h4 class="fw-700 mb-0 font-xssss text-grey-900">Event</h4>
                                <a href="default-event.html" class="fw-600 ms-auto font-xssss text-primary">See
                                    all</a>
                            </div>
                            <div class="card-body d-flex pt-0 ps-4 pe-4 pb-3 overflow-hidden">
                                <div class="bg-success me-2 p-3 rounded-xxl"><h4
                                        class="fw-700 font-lg ls-3 lh-1 text-white mb-0"><span
                                        class="ls-1 d-block font-xsss text-white fw-600">FEB</span>22</h4></div>
                                <h4 class="fw-700 text-grey-900 font-xssss mt-2">Meeting with clients <span
                                        class="d-block font-xsssss fw-500 mt-1 lh-4 text-grey-500">41 madison ave, floor 24 new work, NY 10010</span>
                                </h4>
                            </div>

                            <div class="card-body d-flex pt-0 ps-4 pe-4 pb-3 overflow-hidden">
                                <div class="bg-warning me-2 p-3 rounded-xxl"><h4
                                        class="fw-700 font-lg ls-3 lh-1 text-white mb-0"><span
                                        class="ls-1 d-block font-xsss text-white fw-600">APR</span>30</h4></div>
                                <h4 class="fw-700 text-grey-900 font-xssss mt-2">Developer Programe <span
                                        class="d-block font-xsssss fw-500 mt-1 lh-4 text-grey-500">41 madison ave, floor 24 new work, NY 10010</span>
                                </h4>
                            </div>

                            <div class="card-body d-flex pt-0 ps-4 pe-4 pb-3 overflow-hidden">
                                <div class="bg-primary me-2 p-3 rounded-xxl"><h4
                                        class="fw-700 font-lg ls-3 lh-1 text-white mb-0"><span
                                        class="ls-1 d-block font-xsss text-white fw-600">APR</span>23</h4></div>
                                <h4 class="fw-700 text-grey-900 font-xssss mt-2">Aniversary Event <span
                                        class="d-block font-xsssss fw-500 mt-1 lh-4 text-grey-500">41 madison ave, floor 24 new work, NY 10010</span>
                                </h4>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <!-- main content -->

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

                        <span class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">AR</span>
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

                        <span class="btn-round-sm bg-primary-gradiant me-3 ls-3 text-white font-xssss fw-700">AB</span>
                        <h3 class="fw-700 mb-0 mt-0">
                            <a class="font-xssss text-grey-600 d-block text-dark model-popup-chat" href="#">Armany
                                Seary</a>
                        </h3>
                        <span class="bg-success ms-auto btn-round-xss"></span>
                    </li>
                    <li class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

                        <span class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">SD</span>
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
        <a href="login.jsp" class="nav-content-bttn"><img src="images/female-profile.png" alt="user"
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
<%@include file="footer.jsp"%>

<div class="modal bottom side fade" id="Modalstory" tabindex="-1" role="dialog" style=" overflow-y: auto;">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content border-0 bg-transparent">
            <button type="button" class="close mt-0 position-absolute top--30 right--10" data-dismiss="modal"
                    aria-label="Close"><i class="ti-close text-grey-900 font-xssss"></i></button>
            <div class="modal-body p-0">
                <div class="card w-100 border-0 rounded-3 overflow-hidden bg-gradiant-bottom bg-gradiant-top">
                    <div class="owl-carousel owl-theme dot-style3 story-slider owl-dot-nav nav-none owl-loaded owl-drag">


                        <div class="owl-stage-outer">
                            <div class="owl-stage"
                                 style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s;">
                                <div class="owl-item">
                                    <div class="item"><img src="images/story-5.jpg" alt="image"></div>
                                </div>
                                <div class="owl-item">
                                    <div class="item"><img src="images/story-6.jpg" alt="image"></div>
                                </div>
                                <div class="owl-item">
                                    <div class="item"><img src="images/story-7.jpg" alt="image"></div>
                                </div>
                                <div class="owl-item">
                                    <div class="item"><img src="images/story-8.jpg" alt="image"></div>
                                </div>
                            </div>
                        </div>
                        <div class="owl-nav">
                            <button type="button" role="presentation" class="owl-prev"><i
                                    class="ti-angle-left icon-nav"></i></button>
                            <button type="button" role="presentation" class="owl-next"><i
                                    class="ti-angle-right icon-nav"></i></button>
                        </div>
                        <div class="owl-dots">
                            <button role="button" class="owl-dot"><span></span></button>
                            <button role="button" class="owl-dot"><span></span></button>
                            <button role="button" class="owl-dot active"><span></span></button>
                            <button role="button" class="owl-dot"><span></span></button>
                        </div>
                    </div>
                </div>
                <div class="form-group mt-3 mb-0 p-3 position-absolute bottom-0 z-index-1 w-100">
                    <input type="text"
                           class="style2-input w-100 bg-transparent border-light-md p-3 pe-5 font-xssss fw-500 text-white"
                           value="Write Comments">
                    <span class="feather-send text-white font-md text-white position-absolute"
                          style="bottom: 35px;right:30px;"></span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal-popup-chat">
    <div class="modal-popup-wrap bg-white p-0 shadow-lg rounded-3">
        <div class="modal-popup-header w-100 border-bottom">
            <div class="card p-3 d-block border-0 d-block">
                <figure class="avatar mb-0 float-left me-2">
                    <img src="images/user-12.png" alt="image" class="w35 me-1">
                </figure>
                <h5 class="fw-700 text-primary font-xssss mt-1 mb-1">Hendrix Stamp</h5>
                <h4 class="text-grey-500 font-xsssss mt-0 mb-0"><span
                        class="d-inline-block bg-success btn-round-xss m-0"></span> Available</h4>
                <a href="#" class="font-xssss position-absolute right-0 top-0 mt-3 me-4"><i
                        class="ti-close text-grey-900 mt-2 d-inline-block"></i></a>
            </div>
        </div>
        <div class="modal-popup-body w-100 p-3 h-auto">
            <div class="message">
                <div class="message-content font-xssss lh-24 fw-500">Hi, how can I help you?</div>
            </div>
            <div class="date-break font-xsssss lh-24 fw-500 text-grey-500 mt-2 mb-2">Mon 10:20am</div>
            <div class="message self text-right mt-2">
                <div class="message-content font-xssss lh-24 fw-500">I want those files for you. I want you to send 1
                    PDF and 1 image file.
                </div>
            </div>
            <div class="snippet pt-3 ps-4 pb-2 pe-3 mt-2 bg-grey rounded-xl float-right" data-title=".dot-typing">
                <div class="stage">
                    <div class="dot-typing"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="modal-popup-footer w-100 border-top">
            <div class="card p-3 d-block border-0 d-block">
                <div class="form-group icon-right-input style1-input mb-0"><input type="text"
                                                                                  placeholder="Start typing.."
                                                                                  class="form-control rounded-xl bg-greylight border-0 font-xssss fw-500 ps-3"><i
                        class="feather-send text-grey-500 font-md"></i></div>
            </div>
        </div>
    </div>
</div>


<script src="js/plugin.js"></script>
<script src="js/lightbox.js"></script>
<script src="js/scripts.js"></script>

<div id="lightboxOverlay" tabindex="-1" class="lightboxOverlay" style="display: none;"></div>
<div id="lightbox" tabindex="-1" class="lightbox" style="display: none;">
    <div class="lb-outerContainer">
        <div class="lb-container"><img class="lb-image"
                                       src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="
                                       alt="">
            <div class="lb-nav"><a class="lb-prev" aria-label="Previous image" href=""></a><a class="lb-next"
                                                                                              aria-label="Next image"
                                                                                              href=""></a></div>
            <div class="lb-loader"><a class="lb-cancel"></a></div>
        </div>
    </div>
    <div class="lb-dataContainer">
        <div class="lb-data">
            <div class="lb-details"><span class="lb-caption"></span><span class="lb-number"></span></div>
            <div class="lb-closeContainer"><a class="lb-close"></a></div>
        </div>
    </div>
    <div class="right-comment chat-left scroll-bar theme-dark-bg">
        <div class="card-body ps-2 pe-4 pb-0 d-flex">
            <figure class="avatar me-3"><img src="images/user-8.png" alt="image" class="shadow-sm rounded-circle w45">
            </figure>
            <h4 class="fw-700 text-grey-900 font-xssss mt-1 text-left">Hurin Seary <span
                    class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">2 hour ago</span></h4> <a href="#"
                                                                                                        class="ms-auto"><i
                class="ti-more-alt text-grey-900 btn-round-md bg-greylight font-xss"></i></a></div>
        <div class="card-body d-flex ps-2 pe-4 pt-0 mt-0"><a href="#"
                                                             class="d-flex align-items-center fw-600 text-grey-900 lh-26 font-xssss me-3 text-dark"><i
                class="feather-thumbs-up text-white bg-primary-gradiant me-1 btn-round-xs font-xss"></i> <i
                class="feather-heart text-white bg-red-gradiant me-2 btn-round-xs font-xss"></i>2.8K Thích</a> <a
                href="#" class="d-flex align-items-center fw-600 text-grey-900 lh-26 font-xssss text-dark"><i
                class="feather-message-circle text-grey-900 btn-round-sm font-lg text-dark"></i>22 Bình luận</a></div>
        <div class="card w-100 border-0 shadow-none right-scroll-bar">
            <div class="card-body border-top-xs pt-4 pb-3 pe-4 d-block ps-5">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-6.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">Victor Exrixon <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit. Morbi nulla dolor.</p></div>
            </div>
            <div class="card-body pt-0 pb-3 pe-4 d-block ps-5">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-4.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">Surfiya Zakir <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit. Morbi nulla dolor.</p></div>
            </div>
            <div class="card-body pt-0 pb-3 pe-4 d-block ps-5 ms-5 position-relative">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-3.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">Goria Coast <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit.</p></div>
            </div>
            <div class="card-body pt-0 pb-3 pe-4 d-block ps-5 ms-5 position-relative">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-3.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">Hurin Seary <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit.</p></div>
            </div>
            <div class="card-body pt-0 pb-3 pe-4 d-block ps-5 ms-5 position-relative">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-3.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">David Goria <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit.</p></div>
            </div>
            <div class="card-body pt-0 pb-3 pe-4 d-block ps-5">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-4.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">Seary Victor <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit. Morbi nulla dolor.</p></div>
            </div>
            <div class="card-body pt-0 pb-3 pe-4 d-block ps-5">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-4.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">Ana Seary <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit. Morbi nulla dolor.</p></div>
            </div>
            <div class="card-body pt-0 pb-3 pe-4 d-block ps-5">
                <figure class="avatar position-absolute left-0 ms-2 mt-1"><img src="images/user-4.png" alt="image"
                                                                               class="shadow-sm rounded-circle w35">
                </figure>
                <div class="chat p-3 bg-greylight rounded-xxl d-block text-left theme-dark-bg"><h4
                        class="fw-700 text-grey-900 font-xssss mt-0 mb-1">Studio Express <a href="#" class="ms-auto"><i
                        class="ti-more-alt float-right text-grey-800 font-xsss"></i></a></h4>
                    <p class="fw-500 text-grey-500 lh-20 font-xssss w-100 mt-2 mb-0">Lorem ipsum dolor sit amet,
                        consectetur adipiscing elit. Morbi nulla dolor.</p></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
