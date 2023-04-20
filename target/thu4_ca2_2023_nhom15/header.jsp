<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/19/2023
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<!-- navigation top-->
<header>
    <div class="nav-header bg-white shadow-xs border-0">
        <div class="nav-top">
            <a href="index.jsp">
                <span class="d-inline-block fredoka-font ls-3 fw-600 text-current font-xxl logo-text mb-0">Technology</span>
            </a>
            <a href="#" class="mob-menu ms-auto me-2 chat-active-btn"><i
                    class="feather-message-circle text-grey-900 font-sm btn-round-md bg-greylight"></i></a>
            <a href="#" class="mob-menu me-2"><i
                    class="feather-video text-grey-900 font-sm btn-round-md bg-greylight"></i></a>
            <a href="#" class="me-2 menu-search-icon mob-menu"><i
                    class="feather-search text-grey-900 font-sm btn-round-md bg-greylight"></i></a>
            <button class="nav-menu me-0 ms-2"></button>
        </div>

        <form action="#" class="float-left header-search" style="margin-bottom: 0;">
            <div class="form-group mb-0 icon-input">
                <i class="feather-search font-sm text-grey-400"></i>
                <input type="text" placeholder="Bắt đầu nhập để tìm kiếm.."
                       class="bg-grey border-0 lh-32 pt-2 pb-2 ps-5 pe-3 font-xssss fw-500 rounded-xl w350 theme-dark-bg">
            </div>
        </form>
        <a href="index.jsp" class="p-2 text-center ms-3 menu-icon center-menu-icon"><i
                class="feather-home font-lg alert-primary btn-round-lg theme-dark-bg text-current "></i></a>
        <a href="#" class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
                class="feather-zap font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>
        <a href="#" class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
                class="feather-video font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>
        <a href="#" class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
                class="feather-user font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>
        <a href="#" class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
                class="feather-shopping-bag font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>

        <a href="#" class="p-2 text-center ms-auto menu-icon" id="dropdownMenu3" data-bs-toggle="dropdown"
           aria-expanded="false"><span class="dot-count bg-warning"></span><i
                class="feather-bell font-xl text-current"></i></a>
        <div class="dropdown-menu dropdown-menu-end p-4 rounded-3 border-0 shadow-lg" aria-labelledby="dropdownMenu3">

            <h4 class="fw-700 font-xss mb-4">Thông báo</h4>
            <div class="card bg-transparent-card w-100 border-0 ps-5 mb-3">
                <img src="images/user-8.png" alt="user" class="w40 position-absolute left-0">
                <h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">Hendrix Stamp <span
                        class="text-grey-400 font-xsssss fw-600 float-right mt-1"> 3 min</span></h5>
                <h6 class="text-grey-500 fw-500 font-xssss lh-4">There are many variations of pass..</h6>
            </div>
            <div class="card bg-transparent-card w-100 border-0 ps-5 mb-3">
                <img src="images/user-4.png" alt="user" class="w40 position-absolute left-0">
                <h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">Goria Coast <span
                        class="text-grey-400 font-xsssss fw-600 float-right mt-1"> 2 min</span></h5>
                <h6 class="text-grey-500 fw-500 font-xssss lh-4">Mobile Apps UI Designer is require..</h6>
            </div>

            <div class="card bg-transparent-card w-100 border-0 ps-5 mb-3">
                <img src="images/user-7.png" alt="user" class="w40 position-absolute left-0">
                <h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">Surfiya Zakir <span
                        class="text-grey-400 font-xsssss fw-600 float-right mt-1"> 1 min</span></h5>
                <h6 class="text-grey-500 fw-500 font-xssss lh-4">Mobile Apps UI Designer is require..</h6>
            </div>
            <div class="card bg-transparent-card w-100 border-0 ps-5">
                <img src="images/user-6.png" alt="user" class="w40 position-absolute left-0">
                <h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">Victor Exrixon <span
                        class="text-grey-400 font-xsssss fw-600 float-right mt-1"> 30 sec</span></h5>
                <h6 class="text-grey-500 fw-500 font-xssss lh-4">Mobile Apps UI Designer is require..</h6>
            </div>
        </div>
        <a href="#" class="p-2 text-center ms-3 menu-icon chat-active-btn"><i
                class="feather-message-square font-xl text-current"></i></a>
        <div class="p-2 text-center ms-3 position-relative dropdown-menu-icon menu-icon cursor-pointer">
            <i class="feather-settings animation-spin d-inline-block font-xl text-current"></i>
            <div class="dropdown-menu-settings switchcolor-wrap">
                <h4 class="fw-700 font-sm mb-4">Cài đặt</h4>
                <h6 class="font-xssss text-grey-500 fw-700 mb-3 d-block">Chọn chủ đề màu sắc</h6>
                <ul>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="red" checked=""><i class="ti-check"></i>
                            <span class="circle-color bg-red" style="background-color: #ff3b30;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="green"><i class="ti-check"></i>
                            <span class="circle-color bg-green" style="background-color: #4cd964;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="blue" checked=""><i class="ti-check"></i>
                            <span class="circle-color bg-blue" style="background-color: #132977;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="pink"><i class="ti-check"></i>
                            <span class="circle-color bg-pink" style="background-color: #ff2d55;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="yellow"><i class="ti-check"></i>
                            <span class="circle-color bg-yellow" style="background-color: #ffcc00;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="orange"><i class="ti-check"></i>
                            <span class="circle-color bg-orange" style="background-color: #ff9500;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="gray"><i class="ti-check"></i>
                            <span class="circle-color bg-gray" style="background-color: #8e8e93;"></span>
                        </label>
                    </li>

                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="brown"><i class="ti-check"></i>
                            <span class="circle-color bg-brown" style="background-color: #D2691E;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="darkgreen"><i class="ti-check"></i>
                            <span class="circle-color bg-darkgreen" style="background-color: #228B22;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="deeppink"><i class="ti-check"></i>
                            <span class="circle-color bg-deeppink" style="background-color: #FFC0CB;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="cadetblue"><i class="ti-check"></i>
                            <span class="circle-color bg-cadetblue" style="background-color: #5f9ea0;"></span>
                        </label>
                    </li>
                    <li>
                        <label class="item-radio item-content">
                            <input type="radio" name="color-radio" value="darkorchid"><i class="ti-check"></i>
                            <span class="circle-color bg-darkorchid" style="background-color: #9932cc;"></span>
                        </label>
                    </li>
                </ul>

                <div class="card bg-transparent-card border-0 d-block mt-3" style="height: 28px">
                    <h4 class="d-inline font-xssss mont-font fw-700">Nền tiêu đề</h4>
                    <div class="d-inline float-right mt-1">
                        <label class="toggle toggle-menu-color"><input type="checkbox"><span class="toggle-icon"></span></label>
                    </div>
                </div>
                <div class="card bg-transparent-card border-0 d-block mt-3" style="height: 28px">
                    <h4 class="d-inline font-xssss mont-font fw-700">Vị trí Menu</h4>
                    <div class="d-inline float-right mt-1">
                        <label class="toggle toggle-menu"><input type="checkbox"><span
                                class="toggle-icon"></span></label>
                    </div>
                </div>
                <div class="card bg-transparent-card border-0 d-block mt-3" style="height: 28px">
                    <h4 class="d-inline font-xssss mont-font fw-700">Chế độ tối</h4>
                    <div class="d-inline float-right mt-1">
                        <label class="toggle toggle-dark"><input type="checkbox"><span
                                class="toggle-icon"></span></label>
                    </div>
                </div>

            </div>
        </div>


        <a href="login.jsp" class="p-0 ms-3 menu-icon"><img src="images/profile-4.png" alt="user"
                                                            class="w40 mt--1"></a>

    </div>
</header>
<!-- navigation top -->
</body>
</html>
