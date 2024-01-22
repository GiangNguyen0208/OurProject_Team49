function decrease() {
    var quantityInput = document.getElementById('quantity');
    var currentQuantity = parseInt(quantityInput.value);
    if (currentQuantity > 1) {
        quantityInput.value = currentQuantity - 1;
        updateTotalPrice();
    }
}

// Hàm tăng số luogngwj
function increase() {
    var quantityInput = document.getElementById('quantity');
    var currentQuantity = parseInt(quantityInput.value);
    quantityInput.value = currentQuantity + 1;
    updateTotalPrice();
}

// Hàm cập nhật lại giá tiền.
function updateTotalPrice() {
    let priceElement = document.getElementById('price');
    var quantityInput = document.getElementById('quantity').value;

    if (priceElement.length > 0) {
        priceElement.slice(0, -1);
        let price = priceElement.parseFloat();
        var totalPrice = price * quantityInput;
        document.getElementById('totalPriceOfProduct').innerText = totalPrice + " Đ";
    }
}