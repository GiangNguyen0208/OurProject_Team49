<%@ page import="bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <div class="header__content">
        <p>
            <a href="./index.jsp"><i class="fa fa-drum"></i> <span>Dr/</span>um</a>
        </p>
        <div class="search">
            <input type="text" placeholder="Tìm kiếm"/>
            <button type="submit">Search</button>
        </div>
        <nav>
            <ul class="menu__bar">
                <li class="menu__items">
                    <a href="./index.jsp">Trang chính</a>
                </li>
                <li class="menu__items"><a href="aboutUs.jsp">Giới thiệu</a>
                </li>
                <li class="menu__items">
                    <a href="products">Sản Phẩm</a>
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
                <li class="menu__items">
                    <a href="policy.jsp">Chính sách</a>
                </li>
            </ul>
        </nav>
        <%
            User auth = (User) session.getAttribute("auth");
        %>
        <% if (auth == null) { %>
        <a href="log.jsp" class="sign__in">
            <i class="fa fa-user"></i>
            <span >Đăng Nhập</span>
        </a>
        <%} else if (auth.getGender().equals("M")) { %>
        <div class="avatar-user male">
            <img src="./assets/img/icon/male.png" alt="">
            <ul class="user-menu">
                <li>Xin chào  <%= auth.getFullName() %></li>
                <li>
                    <a href="profile">Cài đặt</a>
                </li>
                <li>
                    <a href="logout" class="sign-out">Đăng xuất</a>
                </li>
            </ul>
        </div>
        <%} else {%>
        <div class="avatar-user fmale">
            <img src="./assets/img/icon/female.png" alt="">
            <ul class="user-menu">
                <li>Xin chào  <%= auth.getFullName()%></li>
                <li>
                    <a href="profile">Cài đặt</a>
                </li>
                <li>
                    <a href="logout" class="sign-out">Đăng xuất</a>
                </li>
            </ul>
        </div>
        <%}%>



        <a href="cart.jsp" class="cart__shopping">
            <i class="fa fa-shopping-cart"></i>
            <span >Giỏ Hàng</span>
        </a>
    </div>
</header>