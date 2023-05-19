<%@ page import="vn.edu.hcmuaf.fit.bean.Blog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/styleblog.css" id="main-style-link">

    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/feather.css">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/emoji.css">

    <link rel="stylesheet" href="css/lightbox.css">


    <link href="css/theme.min.css" type="text/css" rel="stylesheet" id="style-default"/>
    <style>
        .input-files::-webkit-file-upload-button {
            background: #00BFFF;
            border-radius: 50px;
            border: none;
            color: #fff;
            font-weight: 700;
            padding: 8px 25px;
            margin-right: 3px;
            transition: all 0.3s;
        }
    </style>
    <script type="text/javascript" src="<%=request.getContextPath()%>/libraries/ckeditor/ckeditor.js"></script>
</head>

<body class="color-theme-blue mont-font loaded">

<div class="preloader" style="display: none;"></div>

<!-- navigation top-->
<%@include file="header.jsp"%>
<!-- navigation top -->
<div class="main-wrapper">

    <!-- navigation left -->
    <%@include file="navigation_left.jsp"%>
    <!-- navigation left -->
    <!-- main content -->
    <div class="main-content right-chat-active">

        <div id="blog-form" style="z-index: 1; ">
            <div class="pcoded-content">
                <!-- [ breadcrumb ] start -->
                <div class="row">
                    <main class="main" style="z-index: 1;margin: 50px 0 0 50px;height: 1000px; width: 1100px;background-color: #FFFFFF" id="top">
                        <div class="container-fluid px-0" data-layout="container">
                        <%--3. Người dùng nhập thông tin gồm tiêu đề, mô tả, hình ảnh, danh mục và nhấn nút đăng bài viết--%>
                            <form name="item" method="post" enctype="multipart/form-data" class="mb-9">
                                <% Blog b = null;%>
                                <div class="row g-3 flex-between-end mb-5">
                                    <div class="col-auto">
                                        <h2 class="mb-2" style="margin-left: 300px;">Tạo bài viết</h2>
                                    </div>
                                </div>
                                <input type="text" id="pid" name="pid"
                                       value="<%=(b != null) ? request.getParameter("bid") : null%>" style="display: none">
                                <div class="row g-5">
                                    <div class="col-12 col-xl-8">
                                        <h4 class="mb-3">Mô tả ngắn</h4>
                                        <input name="title" id="title" class="form-control mb-5" type="text"
                                               placeholder="Viết mô tả ngắn tại đây..."
                                               value="" required/>
                                        <div class="mb-6">
                                            <h4 class="mb-3">Chi tiết bài viết</h4>
                                            <textarea name="description" rows="20" cols="10" id="editor" required>

                                    </textarea>
                                            <script>
                                                CKEDITOR.replace('editor');
                                            </script>
                                        </div>

                                        <h4 class="mb-3">Thêm ảnh</h4>
                                        <div class="dropzone dropzone-multiple p-0 mb-5 dz-clickable images-container"
                                             id="my-awesome-dropzone" data-dropzone="data-dropzone" style="z-index: 1">
                                            <% int i = 0;
                                                if (b != null) {
                                                    if (b.getimage() != null) {%>
                                            <div class="image-container">
                                                <div id="container<%=i%>" class="dz-message text-600"
                                                     data-dz-message="data-dz-message">
                                                    <div class="border bg-white rounded-3 d-flex flex-center position-relative me-2 mb-2 dz-image-preview"
                                                         style="height:80px;width:80px;">
                                                        <img class="img-product-review dz-image" src="<%=b.getimage()%>">
                                                        <div class="control">
                                                            <a id="remove<%=i%>" class="dz-remove text-400 remove" href=""
                                                               data-dz-remove="">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16px"
                                                                     height="16px" viewBox="0 0 24 24" fill="none"
                                                                     stroke="currentColor" stroke-width="2"
                                                                     stroke-linecap="round" stroke-linejoin="round"
                                                                     class="feather feather-x">
                                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                                </svg>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%
                                                        i++;
                                                    }
                                                }
                                            %>
                                            <div class="image-container">
                                                <div id="container<%=i%>" class="dz-message text-600"
                                                     data-dz-message="data-dz-message">
                                                    <input type="file" id="image<%=i%>" name="files" class="input-files"
                                                           accept="image/*"/>
                                                    <br>
                                                    <img class="mt-3 me-2" src="<%=request.getContextPath()%>/images/image-icon.png"                                                         width="40" alt="">
                                                </div>
                                            </div>
                                        </div>
                                        <input type="text" id="deletedFile" value="" style="display: none">
                                        <p name="pid" class="form-control"
                                           style="display: none">
                                        </p>
                                    </div>
                                    <div class="col-12 col-xl-4">
                                        <div class="row g-2">
                                            <div class="col-12 col-xl-12">
                                                <div class="card mb-3">
                                                    <div class="card-body">
                                                        <h4 class="card-title mb-4">Danh mục</h4>
                                                        <div class="row">
                                                            <div class="col-12 col-sm-6 col-xl-12">
                                                                <div class="mb-4">
                                                                    <div class="d-flex flex-wrap justify-content-between mb-2">
                                                                    </div>
                                                                    <select id="cateid" name="cateid"
                                                                            class="form-select mb-3" aria-label="category">
                                                                        <option value="1"
                                                                                selected>
                                                                            TV
                                                                        </option>
                                                                        <option value="2"
                                                                                >
                                                                            Laptop
                                                                        </option>
                                                                        <option value="3"
                                                                                >
                                                                            Điện thoại
                                                                        </option>
                                                                        <option value="4"
                                                                                >
                                                                            Tablet
                                                                        </option>
                                                                        <option value="5"
                                                                                >
                                                                            Máy tính bàn
                                                                        </option>
                                                                        <option value="6"
                                                                                >
                                                                            Tủ lạnh
                                                                        </option>
                                                                        <option value="7"
                                                                                >
                                                                            Máy giặt
                                                                        </option>
                                                                        <option value="8"
                                                                                >
                                                                            Phụ kiện
                                                                        </option>
                                                                        <option value="9"
                                                                                >
                                                                            Khác
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <button class="btn btn-primary mb-2 mb-sm-0" type="submit" style="margin-left: 100px;padding: 10px 40px 10px 40px;font-size: 17px;">
                                                Đăng bài
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </main>
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
<script>
    const idProduct = $("#pid").val();
    if (idProduct.length > 0) {
        $(".remove").each(function () {
            const id = this.id.substring(6);
            removeFilesData(id)
        })
    } else {
        removeFilesData(1)
    }

    function reloadUpLoadFile() {
        $(".input-files").each(function () {
            $(this).on('change', function (e) {
                const idName = $(this).attr("id");
                const id = idName.substring(5);
                const value = $(this).val();
                let name = "";
                if (value.indexOf("\\") != -1)
                    name = value.substring(value.lastIndexOf("\\") + 1);
                else
                    name = value.substring(value.lastIndexOf("/") + 1);
                uploadFile(id, name, e)
            })
        });
    }

    $(".input-files").each(function () {
        $(this).on('change', function (e) {
            const idName = $(this).attr("id");
            const id = idName.substring(5);
            const value = $(this).val();
            let name = "";
            if (value.indexOf("\\") != -1)
                name = value.substring(value.lastIndexOf("\\") + 1);
            else
                name = value.substring(value.lastIndexOf("/") + 1);
            console.log(id + ", " + name + ", ")
            uploadFile(id, name, e)
        })
    });

    function uploadFile(id, name, event) {
        event.stopPropagation();
        event.preventDefault();
        const files = event.target.files;
        const data = new FormData();
        $.each(files, function (key, value) {
            data.append(key, value);
        });
        postFilesData(id, name, data);
    }

    function removeFilesData(idDelete) {
        $("#remove" + idDelete).on("click", function (e) {
            e.preventDefault();
            const id = this.id.substring(6);
            const src = $("#container" + id + " .img-product-review").attr("src");
            let imageName = "";
            if (src.indexOf("\\") != -1)
                imageName = src.substring(src.lastIndexOf("\\") + 1);
            else
                imageName = src.substring(src.lastIndexOf("/") + 1);
            $("#container" + id).parent().remove();
            const value = $("#deletedFile").val();
            if (value.length > 0)
                $("#deletedFile").val($("#deletedFile").val() + imageName + ",");
            else
                $("#deletedFile").val(imageName + ",");
            console.log($("#deletedFile").val());
        });
    }

    function postFilesData(id, name, data) {
        let bool = false;
        $(".img-product-review").each(function () {
            let nameFile = $(this).attr("src");
            if (nameFile.indexOf(name) != -1) {
                bool = true;
            }
        })
        if (bool === false) {
            $.ajax({
                url: '/thu4_ca2_2023_nhom15_war/UpDownImageBlogController',
                type: 'POST',
                data: data,
                cache: false,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus, jqXHR) {
                    //success
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    $("#container" + id).empty()
                    $("#container" + id).prepend(`<div class="border bg-white rounded-3 d-flex flex-center position-relative me-2 mb-2 dz-image-preview" style="height:80px;width:80px;">
                                                <img class="img-product-review dz-image" src="http://localhost:8080/thu4_ca2_2023_nhom15_war/images/blog/` + name + `">
                                                <div class="control">
                                                <a id="remove` + id + `" class="dz-remove text-400 remove" href="" data-dz-remove="">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16px" height="16px" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x">
                                                        <line x1="18" y1="6" x2="6" y2="18"></line>
                                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                                    </svg>
                                                </a>
                                                </div>
                                            </div>`)
                    $("#my-awesome-dropzone").append(`<div class="image-container">

                                        <div id="container` + id + `" class="dz-message text-600" data-dz-message="data-dz-message">
                                            <input type="file" id="image` + id + `" name="files" class="input-files" accept="image/*" />
                                            <br>
                                            <img class="mt-3 me-2" src="http://localhost:8080/thu4_ca2_2023_nhom15_war/images/image-icon.png" width="40" alt="">
                                        </div>
                                    </div>`)
                    let value = $("#deletedFile").val();
                    if (value.indexOf(name) !== -1) {
                        value = value.replace(name + ",", "");
                        $("#deletedFile").val(value);
                    }
                    console.log($("#deletedFile").val());
                    reloadUpLoadFile();
                    removeFilesData(id);
                }
            });
        } else {
            alert("Bạn đã upload ảnh này rồi !")
        }
    }
</script>
<%--4 Lấy thông tin bài viết người dùng đã nhập gọi đến lớp InsertBlogController--%>
<script>
    $("button[type='submit']").click(function (e) {
        e.preventDefault();

        const title = $("#title").val();
        const description = CKEDITOR.instances.editor.getData();
        const cateid = $("#cateid").val();

        const imageLink = $(".img-product-review").attr("src").substring(59);
        console.log(imageLink);
        let imgFile = []
        $(".img-product-review").each(function () {
            let nameFile = $(this).attr("src");
            if (nameFile.indexOf("\\") != -1)
                imgFile.push(nameFile.substring(nameFile.lastIndexOf("\\") + 1));
            else
                imgFile.push(nameFile.substring(nameFile.lastIndexOf("/") + 1));
        })
        const removed = $("#deletedFile").val();
        const oldImg = removed.substring(0, removed.length - 1);
        $.ajax({
            url: "/thu4_ca2_2023_nhom15_war/InsertBlogController",
            type: "GET",
            data: {
                oldImg: oldImg,
                title: title,
                description: description,
                cateid: cateid,
                image: imageLink,
                imgFile: imgFile,
            },
            success: function () {
                alert("Thêm bài viết mới thành công");
                window.location.href = "index.jsp"
            }
        })
    })
</script>
</html>
