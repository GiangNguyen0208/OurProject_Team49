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
        <div id="manage-product" class="content-wrapper">
            <header class="header-admin">
                <div class="header-title">Quản lý sản phẩm</div>
            </header>

            <div class="content-header">
                <button class="delete">
                    <i class="fa-solid fa-minus"></i>
                    Xóa
                </button>
                <button class="add">
                    <i class="fa-solid fa-plus"></i>
                    Thêm
                </button>
                <c:set var="searchValue" value="${requestScope.searchValue}"/>
                <form method="post" action="adminSearchProduct" class="content-search">
                    <input
                            type="text"
                            name="search-product"
                            placeholder="Tìm kiếm theo tên, danh mục, thương hiệu"
                            class="input-search"
                            value="${searchValue}"
                    />
                    <i
                            class="icon fa-solid fa-magnifying-glass"
                    ></i>
                </form>
            </div>
            <div class="content">
                <table>
                    <thead>
                    <tr>
                        <th>Xem</th>
                        <th>Chỉnh sửa</th>
                        <th>Product ID</th>
                        <th>Tên</th>
                        <th>Giá</th>
                        <th>Danh mục</th>
                        <th>Thương hiệu</th>
                        <th>Số lượng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${requestScope.productList}" var="o">
                        <tr>
                            <td>
                                <i class="fa-solid fa-eye"></i>
                            </td>
                            <td>
                                <i class="fa-solid fa-pen-to-square"></i>
                            </td>
                            <td>${o.getId()}</td>
                            <td>${o.getName()}</td>
                            <td>${o.getTotalPrice()}</td>
                            <td>${o.getCategoryName(o.getCategoryId())}</td>
                            <td>${o.getBrandName(o.getBrandId())}</td>
                            <td>${o.getQuantity()}</td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>
