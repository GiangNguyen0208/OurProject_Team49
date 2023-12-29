// Lấy ra các phần tử cần sử dụng
const accountPhone = document.querySelectorAll('.account .account-phone');
const accountPhoneContent = document.getElementById('account-phone');

// Thêm sự kiện click cho từng nút cập nhật
accountPhone.forEach(button => {
    button.addEventListener('click', function(event) {
        // Ẩn tất cả các phần tử .account
        document.querySelectorAll('.account').forEach(account => {
            account.classList.remove('active');
        });

        // Hiển thị nội dung của thẻ account-phone
        accountPhoneContent.classList.add('active');
    });
});


// Lấy ra các phần tử cần sử dụng
const accountMail = document.querySelectorAll('.account .account-mail');
const accountMailContent = document.getElementById('account-mail');

// Thêm sự kiện click cho từng nút cập nhật
accountMail.forEach(button => {
    button.addEventListener('click', function(event) {
        // Ẩn tất cả các phần tử .account
        document.querySelectorAll('.account').forEach(account => {
            account.classList.remove('active');
        });

        // Hiển thị nội dung của thẻ account-mail
        accountMailContent.classList.add('active');
    });
});


// JS Thông báo
const buttons = document.querySelectorAll('.input-submit-btn');
const alerts = document.querySelectorAll('.submit-alert');
const accountManageContent = document.getElementById('manage-account');

buttons.forEach((button, index) => {
    button.addEventListener('click', (event) => {
        event.preventDefault(); // Ngăn chặn hành vi mặc định của nút
        alerts[index].style.right = '20px';
        let length = 70;
        let process = alerts[index].querySelector('.process');
        const run = setInterval(() =>  {
            process.style.height = length + 'px';
            length -= 5;
            if (length <= -10) {
                clearInterval(run);
                alerts[index].style.right = '-500px';

                setTimeout(() => {
                    document.querySelectorAll('.account').forEach(account => {
                        account.classList.remove('active');
                    });

                    accountManageContent.classList.add('active');
                }, 1000);
            }
        }, 200);
    });
});


