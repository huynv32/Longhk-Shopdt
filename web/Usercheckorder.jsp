
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>AeShopVN</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i">
        <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/newcss.css">
    </head>
    <body>
        <div id="wallpaper">
            <header>
                <div class="top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <p>Wellcome to AeShopVN</p>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-3 order-md-0 order-0">
                                <div class="logo">
                                    <a href="#"><img src="images/LogoMakr_0Dua6Y.png" alt=""></a>
                                    <h1>Website bán hàng</h1>
                                </div>
                            </div>
                            <div class="col-12 col-xs-12 col-sm-12 col-md-6 col-lg-6 order-md-1 order-2">
                                <div class="form-seach-product">
                                    <form action="SearchSVL" method="post" >
                                        <select name="input" id="" class="form-control" required="required">
                                            <option value="0">Chọn danh mục</option>
                                            <option value="1" >Điện thoại</option>
                                            <option value="2">Máy tính</option>
                                            <option value="3">Sản phẩm khác</option>
                                        </select>
                                        <div class="input-seach">
                                            <input type="text" name="txtsearch" id="" class="form-control">
                                            <button type="submit" class="btn-search-pro"><i
                                                    class="fa fa-search"></i></button>
                                        </div>
                                        <div class="clear"></div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="main-menu-header">
                    <div class="container">
                        <div id="nav-menu">
                            <ul>
                                <li class="current-menu-item"><a href="LoginSVL" >Trang chủ</a></li>
                                <!--<li><a href="#">Giới thiệu</a></li>-->
                                <li>
                                    <a href="#">Sản phẩm</a>
                                    <ul>
                                        <li><a href="DisplayeachtypeSVL?type=1">Điện thoại</a></li>
                                        <li><a href="DisplayeachtypeSVL?type=2">Máy tính</a></li>
                                        <li><a href="DisplayeachtypeSVL?type=3">Sản phẩm khác</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </header>
            <div id="content">
                <div class="container">
                    <div class="slider">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="images/banner-01.png" alt="First slide">
                                </div>

                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/iphone-12-800-300-800x300-3.png"
                                         alt="Second slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                               data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                               data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="product-box">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 order-lg-0 order-1">
                                <div class="sidebar">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="LoginSVL" style="margin-left: 100px"><button type="button" class="btn btn-dark">< Tiếp tục mua sắm</button></a>
        <table class="table table-bordered"  id="bodyOrder">

            <c:if test="${lstOrderModel.size() != 0}">
                <thead style="border-bottom: thin">
                    <tr>
                        <th scope="col"><h6 style="color: blue">MÃ ĐƠN HÀNG</h6></th>
                        <th scope="col"><h6 style="color: blue">MAIL</h6></th>
                        <th scope="col"><h6 style="color: blue">TÊN</h6></th>
                        <th scope="col"><h6 style="color: blue">SỐ ĐIỆN THOẠI</h6></th>
                        <th scope="col"><h6 style="color: blue">ĐỊA CHỈ</h6></th>
                        <th scope="col"><h6 style="color: blue">NGÀY ĐẶT HÀNG</h6></th>
                        <th scope="col"><h6 style="color: blue">GHI CHÚ</h6></th>
                    </tr>
                </thead>
            </c:if>
            <c:if  test="${lstOrderModel.size() == 0}">
                <h1 style="margin-left: 550px">Giỏ hàng trống</h1>
                <a href="LoginSVL" style="margin-left: 450px"><img src="images/add-to-cart-icon.jpg" style="height: 400px" ></a>

                <</c:if>
                <tbody>
                <c:forEach items="${lstOrderModel}" var="a">
                    <tr>
                        <th style="color: red">${a.getOrder().getOrderID()}</th>
                        <th style="color: red">${a.getOrder().getMail()}</th>
                        <th style="color: red">${a.getOrder().getNameReceiver()}</th>
                        <th style="color: red">${a.getOrder().getPhone()}</th>
                        <th style="color: red">${a.getOrder().getAddress()}</th>
                        <th style="color: red">${a.getOrder().getOrderDate()}</th>
                        <th style="color: red">${a.getOrder().getNote()}</th>
                        <th style="color: tomato">TOTAL:</th>
                        <th><fmt:formatNumber type = "number" pattern = "#,###.###" value = "${a.getOrder().getTotalMoney()}" /></th>
                        <th>${a.getOrder().getStatus()}
                            <c:if test="${a.getOrder().getStatus() ne 'Đặt hàng thành công' && a.getOrder().getStatus() ne 'Đơn Hàng Bị Hủy'}">
                                <a href="UserDeleteOrder?orderID=${a.getOrder().getOrderID()}&email=${a.getOrder().getMail()}">
                                    <button class="btn-danger">Delete</button></a>
                                </c:if>
                        </th>
                    </tr>

                    <tr>
                        <th scope="col"><h6 style="color: blue"></h6></th>
                        <th scope="col"><h6 style="color: blue"></h6></th>
                        <th scope="col"><h7 style="color: blue">Product</h7></th>
            <th scope="col"><h7 style="color: blue">Quantity</h7></th>
        <th scope="col"><h7 style="color: blue">Amount</h7></th>
    
</tr>
<tr>
    <th></th>
    <th></th>
    <th><img src="${a.getOrderDetails().getUrlPRD()}" width="50rem" height="50rem"></th>
    <th>${a.getOrderDetails().getQuantity()}</th>
    <th><fmt:formatNumber type = "number" pattern = "#,###.###" value = "${a.getOrderDetails().getAmount()}" /></th>
    
</tr>
<tr>
    <th></th>
    <th></th>
    <th></th>

</tr>    

</c:forEach>
</tbody>
</table>

<footer>
    <div class="copyright">
        <p>Design by @danggiang</p>
    </div>
</footer>
<script src="js/newjs.js"></script>
<script src="libs/jquery-3.4.1.min.js"></script>
<script src="libs/bootstrap/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<div id="fb-root"></div>

</body>

</html>