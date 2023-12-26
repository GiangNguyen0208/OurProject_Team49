<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" href="./assets/css/log.css" />
        <link rel="stylesheet" href="./assets/css/reset.css" />
        <link rel="stylesheet" href="./assets/css/style.css" />

        <!-- embed fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

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

        <title>Document</title>
    </head>
    <body>
        <div class="content">
            <div class="form-wrapper log-in open" id="reset-password">
                <a href="./logIn.jsp" class="back-cta">
                    <i class="fa-solid fa-chevron-left"></i>
                    Trở về trang đăng nhập
                </a>
                <form
                    action="./resetPassword"
                    method="post"
                    class="form"
                    autocomplete="off"
                >
                    <p class="title">Đặt lại mật khẩu</p>

                    <div class="form-grp">
                        <label for="password">Mật khẩu</label>
                        <div class="pw-input">
                            <i class="fa-solid fa-key ic"></i>
                            <input
                                id="password"
                                name="password"
                                type="password"
                                placeholder="Nhập mật khẩu mới ..."
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
                                placeholder="Xác nhận mật khẩu ... "
                                required
                            />
                        </div>
                        <div class="errorMessage"></div>
                    </div>

                    <button type="submit" class="submit sub-btn">
                        ĐỔI MẬT KHẨU
                    </button>
                </form>
            </div>
        </div>

        <!-- Script -->
        <script src="./js/validation.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // validate
                Validator({
                    form: "#reset-password",
                    parentError: ".form-grp",
                    errorSelector: ".errorMessage",
                    rules: [
                        Validator.isRequired("#password"),
                        Validator.minLength("#password", 6),
                        Validator.isRequired("#confirm-password"),
                        Validator.minLength("#confirm-password", 6),
                        Validator.confirmPassword(
                            "#confirm-password",
                            function () {
                                return document.querySelector("#password")
                                    .value;
                            },
                            "Mật khẩu xác thực chưa đúng, vui lòng nhập lại"
                        ),
                    ],
                });
            });
        </script>
    </body>
</html>
