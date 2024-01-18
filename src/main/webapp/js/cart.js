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
    var priceElement = document.getElementById('price');
    var quantityInput = document.getElementById('quantity');
    var totalPriceElement = document.getElementById('totalPrice');

    var price = parseInt(priceElement.innerText);
    var quantity = parseInt(quantityInput.value);
    var totalPrice = price * quantity;

    totalPriceElement.innerText = totalPrice;
}