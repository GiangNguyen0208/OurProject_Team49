function decrease(rowId) {
    var quantityElement = document.getElementById('quantity' + rowId);
    var currentQuantity = parseInt(quantityElement.value);
    currentQuantity = Math.max(1, currentQuantity - 1);
    quantityElement.value = currentQuantity;
    updateTotalPrice(rowId);
}

function increase(rowId) {
    var quantityElement = document.getElementById('quantity' + rowId);
    var currentQuantity = parseInt(quantityElement.value);
    currentQuantity++;
    quantityElement.value = currentQuantity;
    updateTotalPrice(rowId);
}

function updateTotalPrice(rowId) {
    var quantityElement = document.getElementById('quantity' + rowId);
    var currentQuantity = parseInt(quantityElement.value);
    var priceElement = document.getElementById('price' + rowId);
    var price = parseFloat(priceElement.innerText.replace('Đ', '').trim());
    var totalPriceElement = document.getElementById('totalPriceOfProduct' + rowId);
    var totalPrice = currentQuantity * price;
    totalPriceElement.innerText = '<%= formatCurrency(' + totalPrice + ') %>';
    updateTotal();
}

function updateTotal() {
    var total = 0;
    var rowCount = <%= cart.size() %>;
    for (var i = 0; i < rowCount; i++) {
        var totalPriceElement = document.getElementById('totalPriceOfProduct' + i);
        var totalPrice = parseFloat(totalPriceElement.innerText.replace('Đ', '').trim());
        total += totalPrice;
    }
    document.querySelector('.total').innerText = '<%= formatCurrency(' + total + ') %>';
}
}