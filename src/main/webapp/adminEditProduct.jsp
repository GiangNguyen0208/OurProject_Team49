
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin</title>

    <!-- reset CSS -->
    <link rel="stylesheet" href="assets/css/reset.css"/>
    <link rel="stylesheet" href="assets/css/index.css"/>
    <!-- FONT AWRSOME -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />

    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
    />

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

    <link rel="stylesheet" href="assets/css/productView.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>
</head>
<body>
<div class="container">
    <div class="title">Xem sản phẩm</div>
    <c:set var="product" value="${requestScope.product}"/>
    <div class="product-wraper">
        <div class="left">
            <p class="product-header">Thông tin sản phẩm</p>
            <div class="product product-name">
                <label for="product-name" class="product-title">Tên sản phẩm:</label>
                <input id="product-name" class="product-sub" value="${product.getName()}"></input>
            </div>
            <div class="product product-discount">
                <label for="product-discount" class="product-title">Giảm giá: </label>
                <input id="product-discount" class="product-sub" value="${product.getDiscountAmount(product.getDiscountId())}"></input>
            </div>
            <div class="product product-discount-start">
                <label for="product-discount-start" class="product-title">Ngày bắt đầu: </label>
                <input id="product-discount-start" class="product-sub" value="${product.getDiscountStartDay(product.getDiscountId())}"></input>
            </div>
            <div class="product product-discount-end">
                <label for="product-discount-end" class="product-title">Ngày kết thúc: </label>
                <input id="product-discount-end" class="product-sub" value="${product.getDiscountEndDay(product.getDiscountId())}"></input>
            </div>
            <div class="product product-category">
                <label for="product-category" class="product-title">Danh mục: </label>
                <input id="product-category" class="product-sub" value="${product.getCategoryName(product.getCategoryId())}"></input>
            </div>
            <div class="product product-brand">
                <label for="product-brand" class="product-title">Thương hiệu: </label>
                <input id="product-brand" class="product-sub" value="${product.getBrandName(product.getBrandId())}"></input>
            </div>
            <div class="product product-supplier">
                <label for="product-supplier" class="product-title">Nhà Cung Cấp: </label>
                <input id="product-supplier" class="product-sub" value="${product.getSupplierName(product.getSupplierId())}"></input>
            </div>
            <div class="product product-quantity">
                <label for="product-quantity" class="product-title">Số lượng: </label>
                <input id="product-quantity" class="product-sub" value="${product.getQuantity()}"></input>
            </div>
            <div class="product product-price">
                <label for="product-price" class="product-title">Giá: </label>
                <input id="product-price" class="product-sub" value="${product.getTotalPrice()}"></input>
            </div>
            <div class="product product-desc">
                <label for="product-desc" class="product-title">Thông tin sản phẩm: </label>
                <textarea id="product-desc" class="desc-area" id="" class="product-sub">${product.getDescription()}</textarea>
            </div>
            <button type="submit" class="">
                Cập nhập thông tin
            </button>
        </div>
        <div class="right">
            <p class="product-header">Hình ảnh sản phẩm</p>
            <div class="list-img">
                <c:forEach var="o" items="${product.imageProducts(product.getId())}">
                    <div class="item">
                        <a href="#!"> <i class="fa-regular fa-circle-xmark delete-ic"></i></a>
                        <img class="img-product" src="${o.getLink()}" alt="">
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>

