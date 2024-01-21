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

    <link rel="stylesheet" href="assets/css/admin.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>
</head>
<body>
<c:import url="header.jsp"/>
<div class="container">
    <c:import url="adminSideBar.jsp"/>
    <div class="main-content">
        <div id="manage-bill" class="content-wrapper">
            <header class="header-admin">
                <div class="header-title">Quản lý hóa đơn</div>
            </header>
            <div class="content-header">
                <div class="content-search">
                    <input
                            type="text"
                            placeholder="Tìm kiếm ..."
                            class="input-search"
                    />
                    <i class="icon fa-solid fa-magnifying-glass"></i>
                </div>
            </div>
            <div class="content">
                <table>
                    <thead>
                    <tr>
                        <th>Xem</th>
                        <th>Chỉnh sửa</th>
                        <th>ID</th>
                        <th>ID người dùng</th>
                        <th>Phương thức thanh toán</th>
                        <th>Ngày tạo hóa đơn</th>
                        <th>Tổng tiền đơn hàng</th>
                        <th>Trạng thái</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <i class="fa-solid fa-eye"></i>
                        </td>
                        <td>
                            <i
                                    class="fa-solid fa-pen-to-square"
                            ></i>
                        </td>
                        <td>001</td>
                        <td>001</td>
                        <td>VISA</td>
                        <td>16/11/2023</td>
                        <td>2000000</td>
                        <td>Đã thanh toán</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox"/>
                        </td>
                        <td>
                            <i
                                    class="fa-solid fa-pen-to-square"
                            ></i>
                        </td>
                        <td>001</td>
                        <td>001</td>
                        <td>COD</td>
                        <td>16/11/2023</td>
                        <td>4500000</td>
                        <td>Đã thanh toán</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>
