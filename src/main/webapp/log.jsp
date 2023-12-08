<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Đăng nhập</title>

    <!-- reset CSS -->
    <link rel="stylesheet" href="assets/css/reset.css"/>

    <!-- embed fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>

    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>

    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
    />

    <!-- Icon -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- styles -->
    <link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/log.css"/>
</head>
<body>
<!-- Form -->

<div class="content">
    <!-- Log In -->
    <div class="form-wrapper log-in open" id="log-in">
        <a href="index.jsp" class="back-cta">
            <i class="fa-solid fa-chevron-left"></i>
            Trở về trang chủ
        </a>
        <form
                action="./log"
                method="post"
                class="form"
                autocomplete="on"
        >
            <p class="title">Đăng Nhập</p>
            <c:set var="error" value="${requestScope.error}"/>
            <c:if test="${error != null}">
                <p class="text-danger">
                   ${error}
                </p>
            </c:if>
            <div class="form-grp">
                <label for="username__login">Tài khoản</label>
                <div class="user-input">
                    <i class="fa-solid fa-user ic"></i>
                    <input
                            id="username__login"
                            type="text"
                            name="username"
                            required
                            placeholder="Nhập tên tài khoản hoặc email..."
                    />
                </div>
                <div class="errorMessage"></div>
            </div>

            <div class="form-grp">
                <label for="password__login">Mật khẩu</label>
                <div class="pw-input">
                    <i class="fa-solid fa-key ic"></i>
                    <input
                            id="password__login"
                            name="password"
                            type="password"
                            required
                            minlength="6"
                            placeholder="Nhập mật khẩu..."
                    />
                </div>
                <div class="errorMessage"></div>
            </div>

            <div class="forget-pw">
                <span>Quên mật khẩu ?</span>
            </div>

            <button
                    type="submit"
                    class="submit sub-btn"
            >
                ĐĂNG NHẬP
            </button>

            <div class="footer">
                <span>Chưa đăng ký tài khoản ?</span>

                <button type="button" class="link" id="sign-up-link">
                    Đăng ký
                </button>
            </div>
        </form>
    </div>

    <!-- Sign Up -->
    <div class="form-wrapper sign-up hidden" id="sign-up">
        <a href="index.jsp" class="back-cta">
            <i class="fa-solid fa-chevron-left"></i>
            Trở về trang chủ
        </a>
        <form
                action="./log.jsp"
                method="post"
                class="form"
                autocomplete="off">
            <p class="title">Đăng Ký</p>

            <div class="form-grp">
                <label for="username__signup">Tài khoản</label>
                <div class="user-input">
                    <i class="fa-solid fa-user ic"></i>
                    <input
                            id="username__signup"
                            name="username-signup"
                            type="text"
                            placeholder="Nhập tên tài khoản hoặc email... "
                            required
                    />
                </div>
                <div class="errorMessage"></div>
            </div>

            <div class="form-grp">
                <label for="email__signup">Email</label>
                <div class="user-input">
                    <i class="fa-solid fa-user ic"></i>
                    <input
                            id="email__signup"
                            name="email__signup"
                            type="email"
                            placeholder="Nhập email đăng ký... "
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                            required
                    />
                </div>
                <div class="errorMessage"></div>
            </div>

            <div class="form-grp">
                <label for="password__signup">Mật khẩu</label>
                <div class="pw-input">
                    <i class="fa-solid fa-key ic"></i>
                    <input
                            id="password__signup"
                            name="password__signup"
                            type="password"
                            minlength="6"
                            placeholder="Nhập mật khẩu..."
                            required
                    />
                </div>
                <div class="errorMessage"></div>
            </div>

            <div class="form-grp">
                <label for="confirm-password">Xác nhận mật khẩu</label>
                <div class="pw-input">
                    <i class="fa-solid fa-key ic"></i>
                    <input
                            id="confirm-password"
                            name="confirm-password"
                            type="password"
                            minlength="6"
                            placeholder="Xác nhận mật khẩu"
                            required
                    />
                </div>
                <div class="errorMessage"></div>
            </div>


            <button type="submit" class="submit sub-btn">
                ĐĂNG KÝ
            </button>



            <div class="footer">
                <span>Đã có tài khoản ?</span>

                <button type="button" class="link" id="log-in-link">
                    Đăng Nhập
                </button>
            </div>
        </form>
    </div>

    <!-- Forgot password -->
    <div class="form-wrapper sign-up hidden" id="forgot-pw__form">
        <a href="index.jsp" class="back-cta">
            <i class="fa-solid fa-chevron-left"></i>
            Trở về trang chủ
        </a>
        <form action="" class="form" autocomplete="off">
            <p class="title">Quên mật khẩu</p>

            <div class="form-grp">
                <label for="username__forgot">Tài khoản</label>
                <div class="user-input">
                    <i class="fa-solid fa-user ic"></i>
                    <input
                            id="username__forgot"
                            name="username_forgot"
                            type="text"
                            placeholder="Nhập email... "
                            required
                    />
                </div>
                <div class="errorMessage"></div>
            </div>

            <button type="submit" class="submit sub-btn">
                XÁC NHẬN
            </button>

            <div class="footer">
                <span>Quay trở lại đăng nhập</span>

                <button type="button" class="link login-in-pw" id="">
                    Đăng Nhập
                </button>
            </div>
        </form>
    </div>
</div>
<script src="js/log.js"></script>
<!-- Đặt script ở cuối trang hoặc sử dụng sự kiện DOMContentLoaded -->
<script src="js/validation.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        Validator({
            form: '#log-in',
            rules: [
                Validator.isRequired('#username__login'),
                Validator.isRequired('#password__login')
            ]
        });
    });
</script>

</body>
</html>
