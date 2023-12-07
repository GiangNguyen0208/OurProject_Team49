function Validator(option) {
    // Hàm validate
        function validate(inputElement, rule) {
            // dùng closet để tìm phần tử cha có class là 'form-grp'.
            let parentElement = inputElement.closest('.form-grp');
            // lấy phần tử con của parentElement có class là errorMessage
            let errorElement = parentElement.querySelector('.errorMessage');

            if (!errorElement) {
                // Nếu không có phần tử con với lớp 'errorMessage'
                // thì tạo thêm thẻ div và thêm vào phần tử cha (parentElement)
                errorElement = document.createElement('div');
                errorElement.classList.add('errorMessage');
                parentElement.appendChild(errorElement);
            }

            let errorMessage = rule.checkRequired(inputElement.value);
            if (errorMessage) {
                errorElement.innerText = errorMessage;
                parentElement.classList.add('invalid');
            } else {
                errorElement.innerText = '';
                parentElement.classList.remove('invalid');
            }
        }
    // lấy element của form cần validate
    let formElement = document.querySelector(option.form);

    if (formElement) {
        option.rules.forEach(function (rule) {
            let inputElement = formElement.querySelector(rule.selector);

            if (inputElement) {
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                };
            }
        });
    }
}

Validator.isRequired = function (selector) {
    return {
        selector: selector,
        checkRequired: function (value) {
            return value.trim() ? undefined : 'Vui lòng nhập trường này';
        }
    };
};
