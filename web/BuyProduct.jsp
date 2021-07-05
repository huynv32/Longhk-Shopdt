
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <%
        int i = 0;
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>AeShop.vn</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i">
        <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body>
        <div id="wallpaper">
            <header>
                <div class="top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <p>Wellcome to AeShop.vn</p>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div class="top-menu">

                                    <ul>

                                        <c:choose>
                                            <c:when test="${ac != null}">

                                                <form action="LogOutSVL" method="GET" role="form">
                                                    <li id="username" data-toggle="modal" data-target="#exampleModal"><img src="images/user.png" height="25rem">${ac.username}</li>
                                                    <input type="submit" value="Đăng Xuất">
                                                    <li><a href="UsercheckOrder?email=${ac.email} ">Đơn Hàng Của tôi</a></li>
                                                </form>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="Login.jsp"><img src="images/user.png" height="25rem">Tài Khoản</a></li>

                                            </c:otherwise>
                                        </c:choose>

                                    </ul>
                                </div>
                            </div>
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Thông tin sản phẩm</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form action="EditInformationUser" method="get">
                                            <div class="modal-body">
                                                <c:choose>
                                                    <c:when test="${ac != null}">
                                                        <strong>User Name: </strong><input type="text" value="${ac.username}" name="username"><br>
                                                        <strong>Phone: </strong><input type="number" value="${ac.phone}" name="phone"><br>
                                                        <strong>Email: </strong><input type="text" value="${ac.email}" readonly name="email"><br>
                                                    </c:when>
                                                </c:choose>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </form>
                                    </div>
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
                                <li><a onclick="bottomFunction()">Liên hệ</a></li>

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
                        <a href="LoginSVL" style="margin-left: 17px"><button type="button" class="btn btn-dark">< Tiếp tục mua sắm</button></a>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-9 order-lg-1 order-0">
                            <div class="product-section product-section2" style="width: 63rem;">
                                <h2 class="title-product">
                                    <a href="#" class="title title2" >Xác nhận Đơn hàng</a>
                                    <div class="bar-menu"><i class="fa fa-bars"></i></div>

                                    <div class="clear"></div>
                                </h2>
                                <c:if test="${sessionScope.lstProductQuantity!=null&&sessionScope.lstProductQuantity.size()>0}">
                                    <div class="content-product-box">
                                        <div class="row">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col"></th>
                                                        <th scope="col">Product</th>
                                                        <th scope="col">Quantity</th>
                                                        <th scope="col">Total money</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    
                                                          <c:forEach begin="0" end="${sessionScope.lstProductincard.size()-1}" var="i">
                                                                   
                                                            <tr>
                                                        <form action="DeleteSessionPrdSVL" method="post">
                                                            <input  value="${lstProductQuantity.get(i).getProductID()}" name="productid" hidden>
                                                            <td><img src="${lstProductincard.get(i).getUrl()}" width="150rem" height="150rem"></td>
                                                            <td>${lstProductincard.get(i).getProductName()}</td>
                                                            <td><a href="BuyProductSVL?productid=${lstProductQuantity.get(i).getProductID()}&operator=add"><button type="button">+</button></a>
                                                                ${lstProductQuantity.get(i).getQuantity()}
                                                                <a href="BuyProductSVL?productid=${lstProductQuantity.get(i).getProductID()}&operator=sub"><button type="button">-</button></a></td>
                                                            <td><fmt:formatNumber type = "number" pattern = "#,###.###" value = "${lstProductQuantity.get(i).getAmount()}"/>₫</td>
                                                            <td><input type="submit" class="btn-danger" value="X"></td>
                                                        </form>    
                                                        </tr>
                                                    </c:forEach>
                                                
                                                <tr>
                                                    <th scope="col"></th>
                                                    <th scope="col"></th>
                                                    <th scope="col"></th>
                                                    <th scope="">Total: <fmt:formatNumber type = "number" pattern = "#,###.###" value = "${money}" />₫</th>
                                                    <th scope="col"></th>
                                                </tr>
                                                <tr>
                                                    <th scope="col"></th>
                                                    <th scope="col"></th>
                                                    <th scope="col"></th>
                                                    <th scope="col"><button class="btn-warning" id="cforder" onclick="cforder()">ORDER</button>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <table id="tableif" class="table" style="display: none" >
                                                <thead>
                                                    <tr>
                                                        <th scope="col"></th>
                                                        <th scope="col">Receiver's information</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <form action="BuyProductSVL" method="post">
                                                    <input value="${ac.email}" name="email" hidden>
                                                    <tr>
                                                        <th scope="col">Receiver:</th>
                                                        <td scope="col"><input type="text" name="reciever" id="reciever"></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="col">Phone:</th>
                                                        <td scope="col"><input type="number" name="phone" id="phone"></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="col">Address:</th>
                                                        <td scope="col"><input type="text" name="address" id="address"></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="col">Note:</th>
                                                        <td scope="col">
                                                            <textarea name="note" cols="30" rows="10" class="form-control"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr><th></th>
                                                        <td><div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                <p id="notyFail" style="display: none; color: red;">Pls Fill all the blank !</p>
                                                            </div>
                                                            <button onclick="checkinfoOrder()" type="button" class="btn-danger" id="checkOD">Check Info</button>
                                                            <button type="submit" class="btn-dark " id="sendOD" style="display: none" onclick="notiy2()">ORDER</button>
                                                        </td>
                                                    </tr>
                                                </form>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>

                    <br>
                    <br>

                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                <div class="box-footer info-contact">
                    <h3>Thông tin liên hệ</h3>
                    <div class="content-contact">
                        <p><strong>Facebook: </strong><a href="https://www.facebook.com/taosthichs.mis" style="color: red">https://www.facebook.com/taosthichs.mis</a></p>
                        <p>
                            <strong>Địa chỉ:</strong> Phúc Thọ , Hà Nội
                        </p>
                        <p>
                            <strong>Email: </strong> danggiang@gmail.com
                        </p>
                        <p>
                            <strong>Điện thoại: </strong> 0336664445
                        </p>

                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">

            </div>
        </div>
    </div>
    <div class="copyright">
        <p>Design by @danggiangdzai</p>
    </div>
</footer>
<!--<script src="js/buyproduct.js"></script>-->
<script src="js/newjs.js"></script>
<script src="libs/jquery-3.4.1.min.js"></script>
<script src="libs/bootstrap/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<div id="fb-root"></div>

</body>

</html>