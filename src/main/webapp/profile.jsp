<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Our Project 49</title>

        <!-- reset CSS -->
        <link rel="stylesheet" href="assets/css/reset.css" />
        <link rel="stylesheet" href="assets/css/profile.css" />
        <link rel="stylesheet" href="assets/css/index.css" />
        <link rel="stylesheet" href="assets/css/style.css" />

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
        <link rel="stylesheet" href="./assets/css/style.css" />

        <!-- OWL CAROUSEL CSS -->
        <link rel="stylesheet" href="./assets/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="./assets/css/owl.theme.default.min.css" />
    </head>
    <body>
        <!-- HEADER -->
        <header>
            <div class="header__content">
                <p>
                    <a href="index.jsp"><i class="fa fa-drum"></i> <span>Dr/</span>um</a>
                </p>
                <div class="search">
                    <input type="text" placeholder="Tìm kiếm" />
                    <button type="submit">Search</button>
                </div>
                <nav>
                    <ul class="menu__bar">
                        <li class="menu__items">
                            <a href="/index.html">Trang chính</a>
                        </li>
                        <li class="menu__items"><a href="aboutUs.jsp">Giới thiệu</a>

    
                        </li>
                        <li class="menu__items">
                            <a href="product.jsp">Sản Phẩm</a>
                            <ul class="drum__container">
                                <li class="drum__item">
                                    <a href="#">Trống điện</a>
                                </li>
                                <li class="drum__item">
                                    <a href="#">Trống bộ</a>
                                </li>
                                <li class="drum__item">
                                    <a href="#">Trống lẻ</a>
                                </li>
                                <li class="drum__item">
                                    <a href="#">Percussion</a>
                                </li>
                                <li class="drum__item">
                                    <a href="#">Symbal</a>
                                </li>
                            </ul>
                        </li>
                        <!-- <li class="menu__items"><a href="#">Khuyến mãi</a></li> -->
                        <!-- <li class="menu__items"><a href="#">Giáo dục</a></li> -->
                        <li class="menu__items">
                            <a href="policy.jsp">Chính sách</a>
                        </li>
                    </ul>
                </nav>
                <div class="sign__in">
                    <i class="fa fa-user"></i>
                    <a href="log.jsp">Đăng Nhập</a>
                </div>
                <div class="cart__shopping">
                    <i class="fa fa-shopping-cart"></i>
                    <a href="log.jsp">Giỏ Hàng</a>
                </div>
            </div>
        </header>

        <!-- PROFILE -->
        <div class="profile-container">
            <!-- .dLDnti -->
            <div data-view-id="breadcrumb_container" class="profile-return">
                <!-- .bXIPFu -->
                <div class="profile-return-content">
                    <!-- .hfMLFx -->
                    <div class="breadcrumb">
                        <a
                            class="breadcrumb-item br1"
                            data-view-id="breadcrumb_item"
                            data-view-index="0"
                            href="/"
                        >
                            <span>Trang chủ</span>
                        </a>
                        <span class="icon icon-next">
                            <i class="fa fa-angle-right"></i>
                        </span>
                        <a
                            href="#"
                            class="breadcrumb-item"
                            data-view-id="breadcrumb_item"
                            data-view-index="1"
                        >
                            <span title="Thông tin tài khoản"
                                >Thông tin tài khoản</span
                            >
                        </a>
                    </div>
                </div>
            </div>
            <div class="profile-function">
                <!-- .bhbbJ -->
                <!-- .jIFHQL -->
                <div class="profile-function-list-container">
                    <ul class="profile-function-list">
                        <!--.fAkTRM -->
                        <li>
                            <a class="is-active" href="/customer/account/edit">
                                <i class="fa fa-user"></i>
                                <span>Thông tin tài khoản</span>
                            </a>
                        </li>
                        <li>
                            <a class="" href="/customer/notification">
                                <i class="fa fa-bell"></i>
                                <span>Thông báo của tôi</span>
                            </a>
                        </li>
                        <li>
                            <a class="" href="/sales/order/history">
                                <i class="fa fa-list-alt"></i>
                                <span>Quản lý đơn hàng</span>
                            </a>
                        </li>
                        <li>
                            <a class="" href="/return-tracking/history">
                                <i class="fa fa-box"></i>
                                <span>Quản lý đổi trả</span>
                            </a>
                        </li>
                        <li>
                            <a class="" href="/customer/address">
                                <i class="fa fa-map-marker-alt"></i>
                                <span>Sổ địa chỉ</span>
                            </a>
                        </li>
                        <li>
                            <a class="" href="/customer/paymentcard">
                                <i class="fa fa-money-check"></i>
                                <span>Thông tin thanh toán </span>
                            </a>
                        </li>
                        <li>
                            <a class="" href="/review-hub">
                                <i class="fa fa-thumbs-up"></i>
                                <span>Đánh giá sản phẩm</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="account">
                <div class="account_title">Thông tin tài khoản</div>
                <div class="style_info">
                    <div class="info">
                        <div class="info-left">
                            <span class="info-title">Thông tin cá nhân</span>
                            <div class="form-profile">
                                <form>
                                    <div class="form-info">
                                        <div class="form-avatar">
                                            <div class="form-avatar-image">
                                                <div>
                                                    <div class="avatar-view">
                                                        <img
                                                            src="https://png.pngtree.com/png-clipart/20210613/original/pngtree-gray-silhouette-avatar-png-image_6404679.jpg"
                                                            alt="avatar"
                                                            class="default"
                                                        />
                                                        <div class="edit">
                                                            <img
                                                                src="https://frontend.tikicdn.com/_desktop-next/static/img/account/edit.png"
                                                                class="edit_img"
                                                                alt=""
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-name">
                                            <div class="form-control">
                                                <label class="input-label">First Name</label>
                                                <div>
                                                    <div class="input-content">
                                                        <input
                                                            class="input-name"
                                                            type="search"
                                                            name="fullName"
                                                            maxlength="128"
                                                            placeholder="Thêm first name"
                                                            value
                                                        />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-control">
                                                <label class="input-label">Last Name</label>
                                                <div>
                                                    <div class="input-content">
                                                        <input
                                                            class="input-nickname"
                                                            name="userName"
                                                            maxlength="128"
                                                            placeholder="Thêm last name"
                                                            type="search"
                                                            value=""
                                                        />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-control">
                                        <label class="input-label"
                                            >Ngày sinh</label
                                        >
                                        <div class="birthday">
                                            <select name="day">
                                                <option value="0">Ngày</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="11">12</option>
                                                <option value="11">13</option>
                                                <option value="11">14</option>
                                                <option value="11">15</option>
                                                <option value="11">16</option>
                                                <option value="11">17</option>
                                                <option value="11">18</option>
                                                <option value="11">19</option>
                                                <option value="11">20</option>
                                                <option value="11">21</option>
                                                <option value="11">22</option>
                                                <option value="11">23</option>
                                                <option value="11">24</option>
                                                <option value="11">25</option>
                                                <option value="11">26</option>
                                                <option value="11">27</option>
                                                <option value="11">28</option>
                                                <option value="11">29</option>
                                                <option value="11">30</option>
                                                <option value="11">
                                                    31
                                                </option></select
                                            ><select name="month">
                                                <option value="0">Tháng</option>
                                                <option value="1">1</option>

                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                            </select>
                                            <select name="year">
                                                <option value="0">Năm</option>
                                                <option value="2023">
                                                    2023
                                                </option>
                                                <option value="2022">
                                                    2022
                                                </option>
                                                <option value="2021">
                                                    2021
                                                </option>
                                                <option value="2020">
                                                    2020
                                                </option>
                                                <option value="2019">
                                                    2019
                                                </option>
                                                <option value="2018">
                                                    2018
                                                </option>
                                                <option value="2017">
                                                    2017
                                                </option>
                                                <option value="2016">
                                                    2016
                                                </option>
                                                <option value="2015">
                                                    2015
                                                </option>
                                                <option value="2014">
                                                    2014
                                                </option>
                                                <option value="2013">
                                                    2013
                                                </option>
                                                <option value="2012">
                                                    2012
                                                </option>
                                                <option value="2011">
                                                    2011
                                                </option>
                                                <option value="2010">
                                                    2010
                                                </option>
                                                <option value="2009">
                                                    2009
                                                </option>
                                                <option value="2008">
                                                    2008
                                                </option>
                                                <option value="2007">
                                                    2007
                                                </option>
                                                <option value="2006">
                                                    2006
                                                </option>
                                                <option value="2005">
                                                    2005
                                                </option>
                                                <option value="2004">
                                                    2004
                                                </option>
                                                <option value="2003">
                                                    2003
                                                </option>
                                                <option value="2002">
                                                    2002
                                                </option>
                                                <option value="2001">
                                                    2001
                                                </option>
                                                <option value="2000">
                                                    2000
                                                </option>
                                                <option value="1999">
                                                    1999
                                                </option>
                                                <option value="1998">
                                                    1998
                                                </option>
                                                <option value="1997">
                                                    1997
                                                </option>
                                                <option value="1996">
                                                    1996
                                                </option>
                                                <option value="1995">
                                                    1995
                                                </option>
                                                <option value="1994">
                                                    1994
                                                </option>
                                                <option value="1993">
                                                    1993
                                                </option>
                                                <option value="1992">
                                                    1992
                                                </option>
                                                <option value="1991">
                                                    1991
                                                </option>
                                                <option value="1990">
                                                    1990
                                                </option>
                                                <option value="1989">
                                                    1989
                                                </option>
                                                <option value="1988">
                                                    1988
                                                </option>
                                                <option value="1987">
                                                    1987
                                                </option>
                                                <option value="1986">
                                                    1986
                                                </option>
                                                <option value="1985">
                                                    1985
                                                </option>
                                                <option value="1984">
                                                    1984
                                                </option>
                                                <option value="1983">
                                                    1983
                                                </option>
                                                <option value="1982">
                                                    1982
                                                </option>
                                                <option value="1981">
                                                    1981
                                                </option>
                                                <option value="1980">
                                                    1980
                                                </option>
                                                <option value="1979">
                                                    1979
                                                </option>
                                                <option value="1978">
                                                    1978
                                                </option>
                                                <option value="1977">
                                                    1977
                                                </option>
                                                <option value="1976">
                                                    1976
                                                </option>
                                                <option value="1975">
                                                    1975
                                                </option>
                                                <option value="1974">
                                                    1974
                                                </option>
                                                <option value="1973">
                                                    1973
                                                </option>
                                                <option value="1972">
                                                    1972
                                                </option>
                                                <option value="1971">
                                                    1971
                                                </option>
                                                <option value="1970">
                                                    1970
                                                </option>
                                                <option value="1969">
                                                    1969
                                                </option>
                                                <option value="1968">
                                                    1968
                                                </option>
                                                <option value="1967">
                                                    1967
                                                </option>
                                                <option value="1966">
                                                    1966
                                                </option>
                                                <option value="1965">
                                                    1965
                                                </option>
                                                <option value="1964">
                                                    1964
                                                </option>
                                                <option value="1963">
                                                    1963
                                                </option>
                                                <option value="1962">
                                                    1962
                                                </option>
                                                <option value="1961">
                                                    1961
                                                </option>
                                                <option value="1960">
                                                    1960
                                                </option>
                                                <option value="1959">
                                                    1959
                                                </option>
                                                <option value="1958">
                                                    1958
                                                </option>
                                                <option value="1957">
                                                    1957
                                                </option>
                                                <option value="1956">
                                                    1956
                                                </option>
                                                <option value="1955">
                                                    1955
                                                </option>
                                                <option value="1954">
                                                    1954
                                                </option>
                                                <option value="1953">
                                                    1953
                                                </option>
                                                <option value="1952">
                                                    1952
                                                </option>
                                                <option value="1951">
                                                    1951
                                                </option>
                                                <option value="1950">
                                                    1950
                                                </option>
                                                <option value="1949">
                                                    1949
                                                </option>
                                                <option value="1948">
                                                    1948
                                                </option>
                                                <option value="1947">
                                                    1947
                                                </option>
                                                <option value="1946">
                                                    1946
                                                </option>
                                                <option value="1945">
                                                    1945
                                                </option>
                                                <option value="1944">
                                                    1944
                                                </option>
                                                <option value="1943">
                                                    1943
                                                </option>
                                                <option value="1942">
                                                    1942
                                                </option>
                                                <option value="1941">
                                                    1941
                                                </option>
                                                <option value="1940">
                                                    1940
                                                </option>
                                                <option value="1939">
                                                    1939
                                                </option>
                                                <option value="1938">
                                                    1938
                                                </option>
                                                <option value="1937">
                                                    1937
                                                </option>
                                                <option value="1936">
                                                    1936
                                                </option>
                                                <option value="1935">
                                                    1935
                                                </option>
                                                <option value="1934">
                                                    1934
                                                </option>
                                                <option value="1933">
                                                    1933
                                                </option>
                                                <option value="1932">
                                                    1932
                                                </option>
                                                <option value="1931">
                                                    1931
                                                </option>
                                                <option value="1930">
                                                    1930
                                                </option>
                                                <option value="1929">
                                                    1929
                                                </option>
                                                <option value="1928">
                                                    1928
                                                </option>
                                                <option value="1927">
                                                    1927
                                                </option>
                                                <option value="1926">
                                                    1926
                                                </option>
                                                <option value="1925">
                                                    1925
                                                </option>
                                                <option value="1924">
                                                    1924
                                                </option>
                                                <option value="1923">
                                                    1923
                                                </option>
                                                <option value="1922">
                                                    1922
                                                </option>
                                                <option value="1921">
                                                    1921
                                                </option>
                                                <option value="1920">
                                                    1920
                                                </option>
                                                <option value="1919">
                                                    1919
                                                </option>
                                                <option value="1918">
                                                    1918
                                                </option>
                                                <option value="1917">
                                                    1917
                                                </option>
                                                <option value="1916">
                                                    1916
                                                </option>
                                                <option value="1915">
                                                    1915
                                                </option>
                                                <option value="1914">
                                                    1914
                                                </option>
                                                <option value="1913">
                                                    1913
                                                </option>
                                                <option value="1912">
                                                    1912
                                                </option>
                                                <option value="1911">
                                                    1911
                                                </option>
                                                <option value="1910">
                                                    1910
                                                </option>
                                                <option value="1909">
                                                    1909
                                                </option>
                                                <option value="1908">
                                                    1908
                                                </option>
                                                <option value="1907">
                                                    1907
                                                </option>
                                                <option value="1906">
                                                    1906
                                                </option>
                                                <option value="1905">
                                                    1905
                                                </option>
                                                <option value="1904">
                                                    1904
                                                </option>
                                                <option value="1903">
                                                    1903
                                                </option>
                                                <option value="1902">
                                                    1902
                                                </option>
                                                <option value="1901">
                                                    1901
                                                </option>
                                                <option value="1900">
                                                    1900
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-control">
                                        <label class="input-label"
                                            >Giới tính</label
                                        >
                                        <label class="radio">
                                            <input
                                                type="radio"
                                                name="gender"
                                                value="male"
                                                checked=""
                                            />
                                            <span class="radio-fake"></span
                                            ><span class="label">Nam</span>
                                        </label>
                                        <label class="radio">
                                            <input
                                                type="radio"
                                                name="gender"
                                                value="female"
                                            />
                                            <span class="radio-fake"></span
                                            ><span class="label">Nữ</span>
                                        </label>
                                        <label class="radio">
                                            <input
                                                type="radio"
                                                name="gender"
                                                value="other"
                                            />
                                            <span class="radio-fake"></span
                                            ><span class="label">Khác</span>
                                        </label>
                                    </div>

                                    <div class="form-control">
                                        <label class="input-label"
                                            >&nbsp;</label
                                        >
                                        <button
                                            type="submit"
                                            class="styles__StyledBtnSubmit-sc-s5c7xj-3 cqEaiM btn-submit"
                                        >
                                            Lưu thay đổi
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="info-vertical"></div>
                        <div class="info-right">
                            <span class="info-title"
                                >Số điện thoại và Email</span
                            >
                            <!-- lCUBE -->
                            <div class="info-contact">
                                <div class="list-item">
                                    <div class="info">
                                        <i class="fa fa-phone icon-profile"></i>
                                        <div class="detail">
                                            <span>Số điện thoại</span>
                                        </div>
                                    </div>
                                    <div class="status">
                                        <span></span>
                                        <button class="button active">
                                            Cập nhật
                                        </button>
                                    </div>
                                </div>
                                <div class="list-item">
                                    <div class="info">
                                        <i
                                            class="fa fa-envelope icon-profile"
                                        ></i>
                                        <div class="detail">
                                            <span>Địa chỉ email</span>
                                        </div>
                                    </div>
                                    <div class="status">
                                        <span></span>
                                        <button class="button active">
                                            Cập nhật
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <span class="info-title">Bảo mật</span>
                            <div class="info-contact">
                                <div class="list-item">
                                    <div>
                                        <i class="fa fa-lock icon-profile"></i>
                                        <span>Thiết lập mật khẩu</span>
                                    </div>
                                    <div class="status">
                                        <span></span>
                                        <button class="button active">
                                            Cập nhật
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <!-- MAIN JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="./js/log.js"></script>
</html>
