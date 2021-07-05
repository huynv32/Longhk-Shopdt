
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
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <h1>ADMIN PAGE</h1>
                    <form action="LogOutSVL" method="Get">
                        <button class="alert-danger" type="submit">Đăng Xuất</button>
                    </form>
                </div>
            </div>
        </div>
        <table class="table table-dark">
            <thead>
                <tr>
                    <th scope="col"><h3>LIST - ACCOUNT</h3></th>
                </tr>
            </thead>
            <thead>
                <tr>
                    <th scope="col">Username</th>
                    <th scope="col">PassWord</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Email</th>
                    <th scope="col">Type</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${lstAc}" var="a">
                    <tr>
                        <th>${a.username}</th>
                        <td>${a.password}</td>
                        <td>${a.phone}</td>
                        <td>${a.email}</td>
                        <td><c:if test="${a.authority == 1}" >
                                Admin
                            </c:if>
                            <c:if test="${a.authority != 1}" >
                                Customer
                            </c:if>
                        </td>
                        <c:if test="${a.getAuthority() != 1}">
                    <form action="DeleteandUpdateUserSVL" method="post">
                        <input name="email" value="${a.getEmail()}" type="hidden">
                        <td><select name="change">
                                <option value="0">Change Type</option>
                                <option value="1" >Admin</option>
                                <option value="2">Customer</option>
                            </select>
                            <button type="submit">Save</button>
                            <button><a href="DeleteandUpdateUserSVL?email=${a.getEmail()}" style="color: red">Delete</a></button>
                        </td>
                    </form>
                </c:if>
            </tr>
        </c:forEach>
    </tbody>
</table>
<!-- LIST ORDERS -->
<table class="table table-active">
    <tr>
        <th>
            <h3 style="color: #0069d9"><strong>LIST - ORDERS</strong></h3>
            <button id="listorder" onclick="showlist()" class="btn btn-info">Show List</button>
        </th>
    </tr>
    
    <!--onclick="showlist()"  style="display: none; " -->
</table>
<table class="table table-bordered" style="display: none; " id="bodyOrder">
    <thead >
        <tr>
            <th scope="col"><h6 style="color: blue">MÃ ĐƠN HÀNG</h6></th>
            <th scope="col"><h6 style="color: blue">MAIL</h6></th>
            <th scope="col"><h6 style="color: blue">TÊN</h6></th>
            <th scope="col"><h6 style="color: blue">SỐ ĐIỆN THOẠI</h6></th>
            <th scope="col"><h6 style="color: blue">ĐỊA CHỈ</h6></th>
            <th scope="col"><h6 style="color: blue">NGÀY ĐẶT HÀNG</h6></th>
            <th scope="col"><h6 style="color: blue">GHI CHÚ</h6></th>
            <!--<th scope="col"><h6 style="color: blue">TỒNG TIỀN ĐƠN HÀNG</h6></th>-->
        </tr>
    </thead>
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


                <th>${a.getOrder().getStatus()}
                    <c:if test="${a.getOrder().getStatus() ne 'Đặt hàng thành công' && a.getOrder().getStatus() ne 'Đơn Hàng Bị Hủy'}">
                        <a href="OrderConfirmSVL?orderID=${a.getOrder().getOrderID()}&ac=confirm">
                            <button class="btn-danger">CONFIRM</button></a>
                        <a href="OrderConfirmSVL?orderID=${a.getOrder().getOrderID()}&ac=delete">
                            <button class="btn-danger">Delete</button></a>

                    </c:if>


                </th>
            </tr>
        <th scope="col"><h6 style="color: blue"></h6></th>
        <th scope="col"><h6 style="color: blue"></h6></th>
        <th scope="col"><h7 style="color: blue">Mã sản phẩm</h7></th>
    <th scope="col"><h7 style="color: blue">Sản phẩm</h7></th>
<th scope="col"><h7 style="color: blue">Số lượng</h7></th>
<th scope="col"><h7 style="color: blue">Tổng tiền sản phẩm</h7></th>


<tr>
    <th></th>
    <th></th>
    <th>${a.getOrderDetails().getProductID()}</th>
    <th><img src="${a.getOrderDetails().getUrlPRD()}" width="50rem" height="50rem"></th>
    <th>${a.getOrderDetails().getQuantity()}</th>
    <th><fmt:formatNumber type = "number" pattern = "#,###.###" value = "${a.getOrderDetails().getAmount()}"/></th>
</tr>
<tr>
    <th></th>
    <th></th>
    <th></th>

</tr>    

</c:forEach>
</tbody>
</table>
<!-- ADD PRODUCT -->
<table class="table table-active" >
    <thead>
        <tr>
            <th scope="col"><button id="value" onclick="addProduct()" class="btn btn-info">Add more product</button></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <form action="InsertProductSVL" method="get">
        <thead id="addProduct" style="display: none">
            <tr>
                <th scope="row">ProductName:</th>
                <td><input type="text" name="prdName"></td>
            </tr>
            <tr>
                <th scope="row">Type: </th>
                <td><select name="prdCategoryid">
                        <option value="1">1 - Điện thoại</option>
                        <option value="2">2 - Máy Tính</option>
                        <option value="3">3 - Khác</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th scope="row">UnitPrice:</th>
                <td><input type="number" name="prdPrice" min="0"></td>
            </tr>
            <tr>
                <th scope="row">UnitsInStock:</th>
                <td><input type="number" name="prdStock"  min="0"></td>
            </tr>
            <tr>
                <th scope="row">Imange (must choose image in this Project):</th>
                <td><input type="file" accept="image/*" name="prdImageurl"></td>
            </tr>
            <tr><th></th><th style="color: blue">DESCRIPTION ABOUT PRODUCT BELOW: </th></tr>

            <tr>
                <th scope="row">Screen:</th>
                <td><input type="text" name="desScreen"></td>
            </tr><tr>
                <th scope="row">Rear camera: :</th>
                <td><input type="text" name="desCamerasau"></td>
            </tr><tr>
                <th scope="row">Front camera::</th>
                <td><input type="text" name="desCameratruoc"></td>
            </tr><tr>
                <th scope="row">Cpu:</th>
                <td><input type="text" name="desCpu"></td>
            </tr><tr>
                <th scope="row">Ram:</th>
                <td><input type="text" name="desRam"></td>
            </tr><tr>
                <th scope="row">Memory:</th>
                <td><input type="text" name="desMemory"></td>
            </tr><tr>
                <th scope="row">Sim:</th>
                <td><input type="text" name="desSim"></td>
            </tr><tr>
                <th scope="row">Made in:</th>
                <td><input type="text" name="desMadein"></td>
            </tr><tr>
                <th scope="row">Operating system:</th>
                <td><input type="text" name="desOs"></td>
            </tr><tr>
                <th scope="row">Waterproof:</th>
                <td><input type="text" name="desWaterproof"></td>
            </tr>
            <tr>
                <th></th>
                <th><input type="submit" value="ADD" class="btn btn-danger"> </th>
            </tr>
        </thead>
    </form>
</table>
<!-- Product -->
<h3 style="color: red; margin-left: 600px" ><strong>LIST - PRODUCT</strong></h3>
<!-- Dien thoai -->
<h4 style="color: #0069d9; margin-left: 20px">Điện Thoại: ${lstDt.size()} Sản phẩm</h4>
<table class="table table-bordered">
    <tr>
        <th style="color: red">Mã Sản Phẩm</th>
        <th style="color: red">Tên Sản Phẩm</th>
        <th style="color: red">Giá</th>
        <th style="color: red">Số Lượng</th>
        <th style="color: red">Đã Bán</th>
    </tr>
    <c:forEach items="${lstDt}" var="d">
        <tr>
        <input type="hidden" name="url" value="${d.getUrl()}">
        <th>${d.getProductID()}</th>
        <th>${d.getProductName()}</th>
        <th><fmt:formatNumber type = "number" pattern = "#,###.###" value = "${d.getUnitPrice()}"/></th>
        <th>${d.getUnitsinStock()}</th>
        <th>${d.getUnitsOnOrder()}</th>
        <th><a href="EditProduct.jsp?pid=${d.getProductID()}"</a>EDIT</th>
        <th><a href="DeleteProductSVL?productid=${d.getProductID()}">DELETE</a></th>
    </tr>
</c:forEach>
</table>
<!-- May tinh -->
<h4 style="color: #0069d9;margin-left: 20px">Máy Tính: ${lstMt.size()} Sản phẩm</h4>
<table class="table table-bordered">
    <tr>
        <th style="color: red">Mã Sản Phẩm</th>
        <th style="color: red">Tên Sản Phẩm</th>
        <th style="color: red">Giá</th>
        <th style="color: red">Số Lượng</th>
        <th style="color: red">Đã Bán</th>
    </tr>
    <c:forEach items="${lstMt}" var="m">
        <tr>
        <input type="hidden" name="url" value="${m.getUrl()}">
        <th>${m.getProductID()}</th>
        <th>${m.getProductName()}</th>
        <th><fmt:formatNumber type = "number" pattern = "#,###.###" value = "${m.getUnitPrice()}"/></th>
        <th>${m.getUnitsinStock()}</th>
        <th>${m.getUnitsOnOrder()}</th>
        <th><a href="EditProduct.jsp?pid=${m.getProductID()}"</a>EDIT</th>
        <th><a href="DeleteProductSVL?productid=${m.getProductID()}">DELETE</a></th>
    </tr>
</c:forEach>
</table>

<!-- San Pham Khac -->
<h4 style="color: #0069d9;margin-left: 20px">Các Thiết Bị Khác: ${lstTbdt.size()} Sản phẩm</h4>
<table class="table table-bordered">
    <tr>
        <th style="color: red">Mã Sản Phẩm</th>
        <th style="color: red">Tên Sản Phẩm</th>
        <th style="color: red">Giá</th>
        <th style="color: red">Số Lượng</th>
        <th style="color: red">Đã Bán</th>
    </tr>
     <c:forEach items="${lstTbdt}" var="t">
    <tr>
    <input type="hidden" name="url" value="${t.getUrl()}">
    <th>${t.getProductID()}</th>
    <th>${t.getProductName()}</th>
    <th><fmt:formatNumber type = "number" pattern = "#,###.###" value = "${t.getUnitPrice()}"/></th>
    <th>${t.getUnitsinStock()}</th>
    <th>${t.getUnitsOnOrder()}</th>
    <th><a href="EditProduct.jsp?pid=${t.getProductID()}"</a>EDIT</th>
    <th><a href="DeleteProductSVL?productid=${t.getProductID()}">DELETE</a></th>
</tr>
</c:forEach>
</table>

<table class="table table-bordered">
    <thead>
        <tr>
            <th scope="col"><h5 style="color: tomato">FEEDBACK SHOP</h5><button id="innerValue" onclick="Feedbackad()" class="btn btn-danger">SHOW FEEDBACK</button></th>
        </tr>
    </thead>
    <tbody id="fb" style="display: none"><tr>
            <th scope="col"><h6 style="color: blue">TITLE </h6></th>
            <th scope="col"><h6 style="color: blue">CONTENT</h6></th>
            <th scope="col"><h6 style="color: blue">SENDER</h6></th>
            <th scope="col"><h6 style="color: blue">EMAIL</h6></th>
            <th scope="col"><h6 style="color: blue">PHONE</h6></th>
        </tr>
        <c:forEach items="${lstFeedback}" var="f">
        <tr>
            <th>${f.getTitle()}</th>
            <th>${f.getContent()}</th>
            <th>${f.getName()}</th>
            <th>${f.getEmail()}</th>
            <th>${f.getPhone()}</th>

        </tr>
        </c:forEach>
    </tbody>
    <thead><tr>
            <th scope="col"><h5 style="color: tomato">FEEDBACK OF PRODUCT</h5><button id="innerValue2" onclick="Feedback2ad()" class="btn btn-danger">SHOW FEEDBACK</button></th>
        </tr>
    </thead>
    <tbody id="fb2" style="display: none">
        <tr>
            <th scope="col"><h6 style="color: blue">TITLE </h6></th>
            <th scope="col"><h6 style="color: blue">ID PRODUCT </h6></th>
            <th scope="col"><h6 style="color: blue">CONTENT</h6></th>
            <th scope="col"><h6 style="color: blue">SENDER</h6></th>
            <th scope="col"><h6 style="color: blue">EMAIL</h6></th>
            <th scope="col"><h6 style="color: blue">PHONE</h6></th>
        </tr>
        <c:forEach items="${lstFeedbackProduct}" var="p">
        <tr>
            <th>${p.getTitle()}</th>
            <th>${p.getProductID()}</th>
            <th>${p.getContent()}</th>
            <th>${p.getName()}</th>
            <th>${p.getEmail()}</th>
            <th>${p.getPhone()}</th>
        </tr>
        </c:forEach>
    </tbody>
</table>
<script>
    function showlist() {
        if (document.getElementById("listorder").innerHTML !== "Hide") {
            document.getElementById("listorder").innerHTML = "Hide";
            document.getElementById("bodyOrder").style.display = "block";
        } else {
            document.getElementById("listorder").innerHTML = "Show List";
            document.getElementById("bodyOrder").style.display = "none";
        }
    }
</script>
<script src="js/newjs.js"></script>
<script src="js/main.js"></script>
<div id="fb-root"></div>

</body>

</html>