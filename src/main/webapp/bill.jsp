<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Hóa Đơn của bạn</title>
    <style>
        .height {
            min-height: 200px;
        }

        .icon {
            font-size: 47px;
            color: #5CB85C;
        }

        .iconbig {
            font-size: 77px;
            color: #5CB85C;
        }

        .table > tbody > tr > .emptyrow {
            border-top: none;
        }

        .table > thead > tr > .emptyrow {
            border-bottom: none;
        }

        .table > tbody > tr > .highrow {
            border-top: 3px solid;
        }
    </style>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chi tiết sản phẩm</title>

    <!-- reset CSS -->
    <link rel="stylesheet" href="assets/css/reset.css" />
    <link rel="stylesheet" href="assets/css/index.css" />
    <link rel="stylesheet" href="assets/css/bill.css" />
    <link rel="stylesheet" href="assets/css/bill2.css" />
    <!-- <link rel="stylesheet" href="./assets/css/product.css"> -->

    <!-- embed fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <!-- FONT GOOGLE -->
    <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap"
            rel="stylesheet"
    />

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

    <!-- Icon -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- styles -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/productDetail.css" />

    <!-- OWL CAROUSEL CSS -->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <link
            rel="stylesheet"
            href="assets/css/owl.theme.default.min.css"
    />
</head>
<body>
<%--HEADER--%>
<c:import url="header.jsp"/>
<div class="clear"></div>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="text-center">
                <h2>Đơn hàng số: ###</h2>
            </div>
            <hr>
            <div class="row">
                <div class="col-xs-12 col-md-3 col-lg-3 pull-left">
                    <div class="panel panel-default height">
                        <div class="panel-heading">Chi tiết đơn hàng</div>
                        <div class="panel-body">
                            <strong>David Peere:</strong><br>
                            1111 Army Navy Drive<br>
                            Arlington<br>
                            VA<br>
                            <strong>22 203</strong><br>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="panel panel-default height">
                        <div class="panel-heading">Thông tin thanh toán</div>
                        <div class="panel-body">
                            <strong>Tên thẻ:</strong> Visa<br>
                            <strong>Số tài khoản:</strong> ***** 332<br>
                            <strong>Ngày mua:</strong> 09/2020<br>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="panel panel-default height">
                        <div class="panel-heading">Phương thức nhận hàng</div>
                        <div class="panel-body">
                            <strong>Nhận hàng tận tay</strong> Yes <br>
                            <strong>Chuyển khoản</strong> No <br>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3 pull-right">
                    <div class="panel panel-default height">
                        <div class="panel-heading">Địa chỉ nhận hàng</div>
                        <div class="panel-body">
                            <strong>Tên người nhận:</strong><br>
                            33 Ngô Quyền<br>
                            Quận 9<br>
                            Tp. Hồ Chí Minh<br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="text-center"><strong>Thứ tự đơn hàng</strong></h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <td><strong>Tên Sản phẩm</strong></td>
                                <td class="text-center"><strong>Giá Sản phẩm</strong></td>
                                <td class="text-center"><strong>Số lượng sản phẩm</strong></td>
                                <td class="text-right"><strong>Tổng tiền</strong></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Samsung Galaxy S5</td>
                                <td class="text-center">$900</td>
                                <td class="text-center">1</td>
                                <td class="text-right">$900</td>
                            </tr>
<%--                            <tr>--%>
<%--                                <td>Samsung Galaxy S5 Extra Battery</td>--%>
<%--                                <td class="text-center">$30.00</td>--%>
<%--                                <td class="text-center">1</td>--%>
<%--                                <td class="text-right">$30.00</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td>Screen protector</td>--%>
<%--                                <td class="text-center">$7</td>--%>
<%--                                <td class="text-center">4</td>--%>
<%--                                <td class="text-right">$28</td>--%>
<%--                            </tr>--%>
                            <tr>
                                <td class="highrow"></td>
                                <td class="highrow"></td>
                                <td class="highrow text-center"><strong>Tổng giá đơn hàng</strong></td>
                                <td class="highrow text-right">$958.00</td>
                            </tr>
                            <tr>
                                <td class="emptyrow"></td>
                                <td class="emptyrow"></td>
                                <td class="emptyrow text-center"><strong>Phí giao hàng</strong></td>
                                <td class="emptyrow text-right">20.000đ</td>
                            </tr>
                            <tr>
                                <td class="emptyrow"></td>
                                <td class="emptyrow"></td>
                                <td class="emptyrow text-center"><strong>Tổng tiền</strong></td>
                                <td class="emptyrow text-right">$978.00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="orderSucecssfully.jsp">
        <button class="add">Thêm vào giỏ hàng</button>
    </a>
</div>
</body>
</html>
