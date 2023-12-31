<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng của bạn</title>

    <!-- reset CSS -->
    <link rel="stylesheet" href="assets/css/reset.css"/>
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <!-- <link rel="stylesheet" href="./assets/css/product.css"> -->

    <!-- embed fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>

    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>

    <!-- FONT GOOGLE -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">

    <!-- FONT AWRSOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">


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
    <link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/about.css"/>
</head>
<body>
<!-- HEADER -->
<c:import url="header.jsp"/>
<!-- CART INFORMATION -->
<section class="cart__details">
    <div data-view-id="breadcrumb__container" class="cart__return">
        <div class="cart__return__content">
            <div class="breadcrumb">
                <a class="breadcrumb__item br1" data-view-id="breadcrumb__item" data-view-index="0" href="index.jsp">
                    <span>Trang chủ</span>
                </a>
                <span class="icon icon__next">
                        <i class="fa fa-angle-right"></i>
                    </span>
                <a href="#" class="breadcrumb__item" data-view-id="breadcrumb__item" data-view-index="1">
                    <span title="Giỏ Hàng">Giỏ Hàng Của Bạn</span>
                </a>
            </div>
        </div>
    </div>

    <section class="cart__content">
        <div class="left__content">
            <h3>Giỏ hàng của bạn đang trống.!</h3>
            <div class="main-content">
                <div id="manage-cart-item" class="content-wrapper active">
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
                        <table class="manage-cart-item">
                            <thead>
                            <tr>
                                <th>Chọn</th>
                                <th>STT</th>
                                <th>ID Sản Phẩm</th>
                                <th>Tên Sản Phẩm</th>
                                <th>Hình ảnh</th>
                                <th>Đơn giá</th>
                                <th>Số lượng</th>
                                <th>Thành Tiền</th>
                                <th>Xóa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <input type="checkbox"/>
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <a href="#">
                    <button>Tiếp tục Mua Sắm</button>
                </a>
            </div>
            <div class="right__content">
                <div class="box">
                    <div class="box__order">
                        <div class="box__order__title">
                            <h3>Thông tin đơn hàng</h3>
                        </div>
                        <div class="box__order__totalPrice">
                            <p>
                                Tổng tiền:
                                <span class="total__price">0đ</span>
                            </p>
                        </div>
                        <div class="box__order__text">
                            <p>
                                Phí vận chuyển sẽ được tính ở trang thanh toán.
                                Bạn cũng có thể nhập mã giảm giá ở trang thanh toán.
                            </p>
                        </div>
                        <div class="box__order__active">
                            <a href="#" class="btn__payment">
                                <button>Thanh toán</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- PRODUCTS RECOMMEND -->
    <section class="products">
        <h2>Dành cho bạn</h2>
        <div class="container">
            <div class="list">
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp1.jpg" alt="Roland VAD 706">
                    </div>
                    <div class="item_content">
                        <div class="title">Roland VAD 706</div>
                        <div class="desc">Bộ trống điện tử tinh tế với kiểu dáng gi</div>
                        <div class="price">Liên Hệ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp2.jpg" alt="Roland VAD 507">
                    </div>
                    <div class="item_content">
                        <div class="title">Roland VAD 507</div>
                        <div class="desc">Bộ trống điện tử tinh tế với kiểu dáng gi</div>
                        <div class="price">124,000,000đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp3.jpg" alt="Roland VAD 504">
                    </div>
                    <div class="item_content">
                        <div class="title">Roland VAD 504</div>
                        <div class="desc">Bộ trống điện tử tinh tế với kiểu dáng gi</div>
                        <div class="price">99,000,000đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp4.jpg" alt="Alesis Turbo Mesh Kit">
                    </div>
                    <div class="item_content">
                        <div class="title">Alesis Turbo Mesh Kit</div>
                        <div class="desc">Bộ trống điện tử 7 chi tiết mặt lưới</div>
                        <div class="price">9,450,000đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp5.jpg" alt="Alesis Crimson II SE">
                    </div>
                    <div class="item_content">
                        <div class="title">Alesis Crimson II SE</div>
                        <div class="desc">Bộ trống điện tử đệm mặt lưới 9 chi tiết</div>
                        <div class="price">29,300,000đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp6.jpg" alt="Trống Pearl Roadshow 505">
                    </div>
                    <div class="item_content">
                        <div class="title">Trống Pearl Roadshow 505</div>
                        <div class="desc">Pearl Roadshow series (5 trống, kick 20") 20"x16" Bass - 10"x07" Tom -
                            12"x08&quo
                        </div>
                        <div class="price">11,600,000đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp7.jpg" alt="Roland TD-1DMK">
                    </div>
                    <div class="item_content">
                        <div class="title">Roland TD-1DMK</div>
                        <div class="desc"> - Các mặt pad đều được thiết kế dạng lưới (mesh) cho độ bền tốt và cảm giác
                            chơi chân thực. - Chân (stand) được thiết kế nhỏ gọn, cứng cáp giúp bộ trống không bị di
                            chuyển khi chơi.
                        </div>
                        <div class="price">19,000,000đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp8.jpg" alt="Alesis Command Mesh Kit">
                    </div>
                    <div class="item_content">
                        <div class="title">Alesis Command Mesh Kit</div>
                        <div class="desc">Command Mesh Kit có tất cả các miếng đệm bằng mặt lưới, mang lại trải nghiệm
                            đánh trống đích thực. Bộ sản phẩm này bao gồm một trống kick 8” đi kèm pedal, 1 snare
                            dual-zone 10”, và 3 to
                        </div>
                        <div class="price">25,100,00đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="assets/img/product/sp9.jpg" alt="Alesis Surge Mesh Kit">
                    </div>
                    <div class="item_content">
                        <div class="title">Alesis Surge Mesh Kit</div>
                        <div class="desc">Bộ trống điện tử mặt lưới 8 chi tiết</div>
                        <div class="price">16,910,000</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <!-- PAGE 2 -->

                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p1.jpg" alt="Meinl MT1415BN">
                    </div>
                    <div class="item_content">
                        <div class="title">Meinl MT1415BN</div>
                        <div class="desc">Meinl MT1415BN Marathon Series Black Nickel Finish Steel Timbales MEINL
                            Marathon® Series Timbales được trang bị
                        </div>
                        <div class="price"> 12,710,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p2.jpg" alt="Pear Snare Drum STH1450S">
                    </div>
                    <div class="item_content">
                        <div class="title">Pear Snare Drum STH1450S</div>
                        <div class="desc">Vỏ (shell) 1mm Beaded Steel Shell cho âm vực cao sắc nét ,được mạ crom bắt
                            mắt
                        </div>
                        <div class="price"> 5,780,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p3.jpg" alt="Pear Snare Drum STH1465S">
                    </div>
                    <div class="item_content">
                        <div class="title">Pear Snare Drum STH1465S</div>
                        <div class="desc"> Vỏ (shell) 1mm Beaded Steel Shell cho âm vực cao sắc nét ,được mạ crom bắt
                            mắt
                        </div>
                        <div class="price">6,470,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p4.jpg" alt="Pearl STH1450AL SensiTone Heritage Alloy 14">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl STH1450AL SensiTone Heritage Alloy 14</div>
                        <div class="desc">Snare kim loại với Hợp kim nhôm Heritage mang lại âm sắc và màu sắc cổ điển
                            phù hợp với mọi thể loại nhạc
                        </div>
                        <div class="price"> 7,640,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p5.jpg" alt="Pearl STH1465AL SensiTone Heritage Alloy 14">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl STH1465AL SensiTone Heritage Alloy 14</div>
                        <div class="desc">Vỏ (shell) 1,2 mm Beaded Seamless Aluminum Shell cho âm mạnh mẽ , khô , nhiều
                            âm bồi . được mạ Hợp kim nhôm Heritage cho mà
                        </div>
                        <div class="price"> 8,210,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p6.jpg" alt="Pearl STH1465BR">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl STH1465BR</div>
                        <div class="desc">Snare kim loại mang lại âm sắc của tác phẩm cổ điển phù hợp với mọi phong cách
                            âm nhạc.
                        </div>
                        <div class="price"> 9,870,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p7.jpg" alt="Pearl STH1450BR">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl STH1450BR</div>
                        <div class="desc">Snare kim loại mang lại âm sắc của tác phẩm cổ điển phù hợp với mọi</div>
                        <div class="price">8,890,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/single/p8.jpg" alt="Pearl Matte Natural MUS1465M224">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl Matte Natural MUS1465M224</div>
                        <div class="desc">Trống Snare Matte Natural MUS1465M224 Vỏ 6 lớp/5mm gỗ Maple SST CL Bridge Lug
                            Finish: Thin Matte Lacquer Bộ lọc SR700 mượt mà
                        </div>
                        <div class="price"> 4,180,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item"></div>

                <!-- PAGE 3 -->

                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/odery/p1_black.jpg" alt="Pearl Dacade Maple DMP943XP/C">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl Dacade Maple DMP943XP/C</div>
                        <div class="desc">Bộ trống Pearl Dacade Maple bao gồm 13x9TT, 16x16FT, 24x14BD(BX), TH-900S,
                            ADP-20
                        </div>
                        <div class="price">14,730,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/odery/p2_black.jpg" alt="Pearl PSP923XP/C452">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl PSP923XP/C452</div>
                        <div class="desc">Bộ trống được sản xuất để kỉ niệm 75 năm thành lập hãng pearl • Vào năm 1966,
                            Pearl
                        </div>
                        <div class="price">54,230,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/odery/p3_black.jpg" alt="PEARL Export Lacquer EXL725SP Standard">
                    </div>
                    <div class="item_content">
                        <div class="title">PEARL Export Lacquer EXL725SP Standard</div>
                        <div class="desc">Pearl Export Lacquer series (5 trống, trống kick 22") 22"x18" Bass - 10"x07"
                            Tom - 12"x08"
                        </div>
                        <div class="price"> 13,300,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/odery/p4_black.jpg" alt="Pearl DMP925SP/C">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl DMP925SP/C</div>
                        <div class="desc">Pearl DMP925SP/C bộ trống Jazz hoàn hảo 22 inch bằng gỗ Maple mang đến cảm
                            hứng vô tận cho người chơi với mức giá cực kỳ mềm
                        </div>
                        <div class="price">20,700,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/odery/p5_brown.jpg" alt="Trống PEARL Roadshow RS525 standard">
                    </div>
                    <div class="item_content">
                        <div class="title">Trống PEARL Roadshow RS525 standard</div>
                        <div class="desc">Pearl Roadshow series (5 trống, kick 22") 22"x16" Bass - 10"08" Tom - 12"x09"
                            Tom
                        </div>
                        <div class="price">12,450,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/odery/p6_black.jpg" alt="Pearl Export Lacquer EXL725FP/C">
                    </div>
                    <div class="item_content">
                        <div class="title">Pearl Export Lacquer EXL725FP/C</div>
                        <div class="desc">Trống Pearl Export Lacquer XL725FP/C bao gồm 10x7TT, 12x8TT, 14x14FT,
                            22x18BD(BB), 14x5.5SD, TH-70I(x2)
                        </div>
                        <div class="price">14,610,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/pearl_jazz/p1__white.jpg" alt="Trống Pearl Roadshow 584 Jazz style">
                    </div>
                    <div class="item_content">
                        <div class="title">Trống Pearl Roadshow 584 Jazz style</div>
                        <div class="desc">Pearl Roadshow series (4 trống, kick 18") 18"x12" Bass - 10"x07" Tom - 14"x10"
                            Floor - 13"x5" Snare Giá đã bao gồm đầy đủ:
                        </div>
                        <div class="price"> 9,890,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/pearl_jazz/p2.jpg" alt="Odery InRock IR.80">
                    </div>
                    <div class="item_content">
                        <div class="title">Odery InRock IR.80</div>
                        <div class="desc">Trống Odery InRock IR.80 bao gồm Tom: 10 x 07 / 12 x 08/ 14 x 13/k 18 x 16/s
                            13 x 0
                        </div>
                        <div class="price">17,000,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img_product/sets/pearl_jazz/p3__black.jpg" alt="Odery cafekit">
                    </div>
                    <div class="item_content">
                        <div class="title">Odery cafekit</div>
                        <div class="desc">Trống Odery InRock IR.80 bao gồm Tom: 10 x 07 / 12 x 08/ 14 x 13/k 18 x 16/s
                            13 x 0 i
                        </div>
                        <div class="price">12,660,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <!-- PAGE 4 -->

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p1.jpg" alt="Zildjian ZP4PK">
                    </div>
                    <div class="item_content">
                        <div class="title">Zildjian ZP4PK</div>
                        <div class="desc">Zildjian Planet Zs Zildjian là một cách dễ dàng và giá cả phải chăng để hoàn
                            thành thiết lập của bạn. Bộ 3 mảnh này bao gồm một cặp Hi-hat 14 ", Crash 16" và Ride 20 "
                        </div>
                        <div class="price"> 6,100,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p2.jpg" alt="ZILDJIAN KCD900 ">
                    </div>
                    <div class="item_content">
                        <div class="title">ZILDJIAN KCD900</div>
                        <div class="desc">Bộ Cymbal Zildjian KCD900 thuộc dòng K khá nổi tiếng của Zildjian, KCD là viết
                            tắt của K Custom Dark.
                        </div>
                        <div class="price"> 32,370,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p3.jpg" alt="Meinl HCS141620">
                    </div>
                    <div class="item_content">
                        <div class="title">Meinl HCS141620</div>
                        <div class="desc">Meinl HCS141620 là bộ 3 cymbal bao gồm 1 cặp 14" hi hat, 1 chiếc crash 16" và
                            một chiếc ride 20" cung cấp âm thanh ấm áp hài hòa và đầy đủ
                        </div>
                        <div class="price">6,290,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p4.jpg" alt="ZILDJIAN ILH16C">
                    </div>
                    <div class="item_content">
                        <div class="title">ZILDJIAN ILH16C</div>
                        <div class="desc">ZILDJIAN ILH16C</div>
                        <div class="price">3,220,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p5.jpg" alt="ZILDJIAN ILHPRO">
                    </div>
                    <div class="item_content">
                        <div class="title">ZILDJIAN ILHPRO</div>
                        <div class="desc">ZILDJIAN ILHPRO</div>
                        <div class="price"> 11,020,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p6.jpg" alt="Zildjian KC0801W">
                    </div>
                    <div class="item_content">
                        <div class="title">Zildjian KC0801W</div>
                        <div class="desc">Đặt nền tảng của nhóm worship của bạn với bộ lá của Zildjian. Bộ sưu tập âm
                            thanh ấm áp này có K Custom sáng tạo, vừa mạnh mẽ, vừa sôi động, nhưng tối và nhẹ nhàng.
                        </div>
                        <div class="price">32,370,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p7.jpg" alt="Zildjian S390">
                    </div>
                    <div class="item_content">
                        <div class="title">Zildjian S390</div>
                        <div class="desc">Zildjian S390 là cymbal dòng S cho âm thanh tuyệt vời với mức giá phải chăng.
                            Bộ cymbals bao gồm hi-hats, 2 crashes, và balanced ride một lựa chọn tốt cho những người
                            muốn nâng cấp cymbal của mình
                        </div>
                        <div class="price"> 14,100,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p8.jpg" alt="ZILDJIAN ZP20R">
                    </div>
                    <div class="item_content">
                        <div class="title">ZILDJIAN ZP20R</div>
                        <div class="desc">ZILDJIAN ZP20R</div>
                        <div class="price">2,870,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

                <div class="item">
                    <div class="img">
                        <img src="img_product/cymbal/package/page1/p9.jpg" alt="Zildjan K0801C">
                    </div>
                    <div class="item_content">
                        <div class="title">Zildjan K0801C</div>
                        <div class="desc">Cymbals K Zildjian huyền thoại, nắm bắt đúng giai điệu, âm lượng và duy trì
                            cho nhạc Country được phát trên toàn thế giới. Mỗi cymbal khô, tối và biểu cảm và được chọn
                            bằng tay ở kích thước lớn hơn
                        </div>
                        <div class="price"> 34,450,000 đ</div>
                        <button class="add">Thêm vào giỏ hàng</button>
                    </div>
                </div>

            </div>
        </div>
        <ul class="listPage">
        </ul>

        <div class="more_Product">


        </div>
    </section>

    <!-- FOOTER -->
    <footer>
        <div class="footer__main">
            <div class="footer__items">
                <h3>Thông tin của hàng</h3>
                <nav>
                    <ul>
                        <li><a href="#">Giới thiệu cửa hàng</a></li>
                        <li><a href="#">Hệ thống showrom, đại lý</a></li>
                        <li><a href="#">Liên hệ / Góp ý</a></li>
                        <li><a href="#">Mua trả góp</a></li>
                        <li><a href="#">Chương trình khách hàng thân thiết</a></li>
                        <li><a href="#">Điều khoản sử dụng Website</a></li>
                        <li><a href="#">Tuyển dụng</a></li>
                    </ul>
                </nav>
            </div>
            <div class="footer__items">
                <h3>Hướng dẫn chung</h3>
                <nav>
                    <ul>
                        <li><a href="#">Giao hàng - Đổi trả</a></li>
                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                        <li><a href="#">Thanh toán và bảo mật</a></li>
                        <li><a href="#">Chính sách bảo hành</a></li>
                        <li><a href="#">Bảo trì đàn piano</a></li>
                        <li><a href="#">Kích hoạt bảo hành</a></li>
                    </ul>
                </nav>
            </div>
            <div class="footer__items">
                <h3>Hỗ trợ khách hàng</h3>
                <p>Gọi mua hàng: <span>1800 6715 </span> (Miễn Phí) </p>
                <p>Khiếu nại, Bảo hành: <span>028710 88 333</span></p>
                <p>Thời gian phục vụ: 8h-22h</p>
                <p>Email: <a href="">info@gteam49.vn</a></p>
            </div>
            <div class="footer__items">
                <div class="about__us">
                    <h3>Mạng xã hội</h3>
                    <div class="about__us__icon">
                        <i class="fa-brands fa-square-facebook" style="color: #0080ff;"></i>
                        <i class="fab fa-youtube-square" style="color: #ff0000;"></i>
                        <i class="fab fa-twitter-square" style="color: #50a3f6;"></i>
                    </div>
                </div>
                <div class="about__us">
                    <h3>Hệ thống Website</h3>
                    <nav>
                        <ul>
                            <li><a href="#">Team 49 Shop</a></li>
                            <li><a href="#">Team 49 Music University</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="footer__items">
                <h3>Công ty Cổ Phần TM-DV-SX Team 49</h3>
                <div class="desc">
                    <p>GPKD số 0304757232 do sở Kế hoạch Đầu tư TPHCM cấp ngày 01/01/2007 </p>
                    <p>Địa chỉ: 386 CMT8, P.10, Q.3, TPHCM</p>
                    <p>Điện thoại: <span>1800 6715</span></p>
                    <p>Hotline: <span>028710 88 333</span></p>
                    <p>Email: <a href="#">info@team49.vn</a></p>
                </div>
            </div>
            <div class="footer__items">
                <div class="payment">
                    <h3>cách thức thanh toán</h3>
                    <a href="#">
                        <img src="https://vietthuong.vn/assets/frontend/images/thanhtoan.png"
                             alt="Phuong_Thuc_thanh_toan">
                    </a>
                </div>
                <div class="certification">
                    <h3>Chứng nhận</h3>
                    <a href="">
                        <img src="https://vietthuong.vn/assets/frontend/images/cntb.png" alt="">
                    </a>
                </div>
            </div>
        </div>
        <div class="footer__copyright">
            <p>&copy: 2023 Đồ án Lập Trình Web HK5. | Design by <span>Team 49</span></p>
        </div>
    </footer>
</section>
    <!-- MAIN JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="js/product.js"></script>
    <script src="js/paging.js"></script>
</body>


</html>