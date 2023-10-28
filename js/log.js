// Lấy tham chiếu đến button Sign Up
var signUpButton = document.getElementById("sign-up-link");

// Lấy tham chiếu đến button Log In
var logInButton = document.getElementById("log-in-link");

// Lấy tham chiếu đến form đăng nhập
var logInForm = document.getElementById("log-in");

// Lấy tham chiếu đến form đăng ký
var signUpForm = document.getElementById("sign-up");

// Thêm sự kiện click cho button Sign Up
signUpButton.addEventListener("click", function() {
    logInForm.classList.remove("open");
    logInForm.classList.add("hidden");
    signUpForm.classList.add("open");
    signUpForm.classList.remove("hidden");
});

// Thêm sự kiện click cho button Log In
logInButton.addEventListener("click", function() {
    signUpForm.classList.remove("open");
    signUpForm.classList.add("hidden");
    logInForm.classList.add("open");
    logInForm.classList.remove("hidden");
});