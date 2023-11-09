
const aboutProBackground = document.getElementById("aboutProBackground");

window.addEventListener("scroll", function () {
    const scrollPosition = window.scrollY;
    const speed = 0.5; // Điều chỉnh tốc độ thay đổi

    aboutProBackground.style.backgroundPosition = `center ${-scrollPosition * speed}px`;
});
