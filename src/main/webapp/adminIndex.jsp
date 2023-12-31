<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin</title>

        <!-- reset CSS -->
        <link rel="stylesheet" href="assets/css/reset.css" />

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
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

        <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap"
            rel="stylesheet"
        />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
        />

        <link rel="stylesheet" href="assets/css/admin.css" />
        <link rel="stylesheet" href="assets/css/style.css" />
    </head>
    <body>
        <div class="container">
            <div class="side-bar">
                <div class="user-account">
                    <i class="icon fa-solid fa-user"></i>
                    <div class="title">Quản trị viên</div>
                </div>
                <ul class="side-bar__list">
                    <li class="side-bar__item">
                        <i class="icon fa-solid fa-user"></i>
                        <button class="manage-user item-cta">
                            Quản lý người dùng
                        </button>
                    </li>
                    <li class="side-bar__item">
                        <i class="icon fa-solid fa-drum"></i>
                        <button class="manage-product item-cta">
                            Quản lý sản phẩm
                        </button>
                    </li>
                    <li class="side-bar__item">
                        <i class="icon fa-solid fa-file-invoice"></i>
                        <button class="manage-bill item-cta">
                            Quản lý hóa đơn
                        </button>
                    </li>
                    <li class="side-bar__item"></li>
                </ul>
            </div>
            <div class="main-content">
                <div id="manage-user" class="content-wrapper active">
                    <header class="header">
                        <div class="header-title">Quản lý người dùng</div>
                    </header>

                    <div class="content">
                        <div class="content-header">
                            <div class="content-search">
                                <input
                                    type="text"
                                    placeholder="Tìm kiếm ..."
                                    class="input-search"
                                />
                                <i
                                    class="icon fa-solid fa-magnifying-glass"
                                ></i>
                            </div>
                        </div>
                        <table class="manage-user">
                            <thead>
                                <tr>
                                    <th>Chọn</th>
                                    <th>Chỉnh sửa</th>
                                    <th>ID</th>
                                    <th>Tên</th>
                                    <th>Email</th>
                                    <th>Số điện thoại</th>
                                    <th>Trạng thái</th>
                                    <th>Vai trò</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>
                                        <i
                                            class="fa-solid fa-pen-to-square"
                                        ></i>
                                    </td>
                                    <td>001</td>
                                    <td>Phạm Đức Đại</td>
                                    <td>phducdai47@gmail.com</td>
                                    <td>0943246357</td>
                                    <td>1</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>
                                        <i
                                            class="fa-solid fa-pen-to-square"
                                        ></i>
                                    </td>
                                    <td>002</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>nguyenvana@gmail.com</td>
                                    <td>0922453213</td>
                                    <td>1</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>
                                        <i
                                            class="fa-solid fa-pen-to-square"
                                        ></i>
                                    </td>
                                    <td>003</td>
                                    <td>Hà Văn B</td>
                                    <td>havanb@gmail.com</td>
                                    <td>0977253423</td>
                                    <td>0</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>
                                        <i
                                            class="fa-solid fa-pen-to-square"
                                        ></i>
                                    </td>
                                    <td>001</td>
                                    <td>Trương Hoài C</td>
                                    <td>truonghoaic@gmail.com</td>
                                    <td>097422346</td>
                                    <td>1</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>
                                        <i
                                            class="fa-solid fa-pen-to-square"
                                        ></i>
                                    </td>
                                    <td>001</td>
                                    <td>Phan Văn H</td>
                                    <td>phvanh@gmail.com</td>
                                    <td>0924634214</td>
                                    <td>1</td>
                                    <td>0</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="manage-product" class="content-wrapper">
                    <header class="header">
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
                        <table class="manage-user">
                            <thead>
                                <tr>
                                    <th>Chọn</th>
                                    <th>Chỉnh sửa</th>
                                    <th>ID</th>
                                    <th>Product ID</th>
                                    <th>Tên</th>
                                    <th>Giá</th>
                                    <th>Mã giảm giá</th>
                                    <th>Thương hiệu</th>
                                    <th>Danh mục</th>
                                    <th>Mô tả sản phẩm</th>
                                    <th>Số lượng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>
                                        <i
                                            class="fa-solid fa-pen-to-square"
                                        ></i>
                                    </td>
                                    <td>001</td>
                                    <td>001</td>
                                    <td>Roland VAD 706</td>
                                    <td>0</td>
                                    <td>01</td>
                                    <td>Rolan</td>
                                    <td>Trống điện tử</td>
                                    <td class="th-desc">
                                        Sự kết hợp hoàn hảo của trống acoustic
                                        và trống điện
                                    </td>
                                    <td>20</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>
                                        <i
                                            class="fa-solid fa-pen-to-square"
                                        ></i>
                                    </td>
                                    <td>001</td>
                                    <td>001</td>
                                    <td>Roland VAD 706</td>
                                    <td>0</td>
                                    <td>01</td>
                                    <td>Rolan</td>
                                    <td>Trống điện tử</td>
                                    <td class="th-desc">
                                        Sự kết hợp hoàn hảo của trống acoustic
                                        và trống điện
                                    </td>
                                    <td>20</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="manage-bill" class="content-wrapper">
                    <header class="header">
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
                        <table class="manage-user">
                            <thead>
                                <tr>
                                    <th>Chọn</th>
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
                                        <input type="checkbox" />
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
                                        <input type="checkbox" />
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

        <script src="js/admin.js"></script>
    </body>
</html>