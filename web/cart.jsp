
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Rossi - Sport eCommerce Bootstrap 5 Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="icon" href="assets/images/favicon.ico">

        <!-- ************************* CSS ************************* -->
        <!-- Bootstrap CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">

        <!-- Fontawesome CSS -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet">

        <!-- IcoFont CSS -->
        <link href="assets/css/icon-font.min.css" rel="stylesheet">

        <!-- Plugins CSS -->
        <link href="assets/css/plugins.css" rel="stylesheet">

        <!-- Main CSS -->
        <link href="assets/css/main.css" rel="stylesheet">

        <!-- Modernizer JS -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

        <%
            session = request.getSession(false);
            String purchaseSuccessMessage = null;
            if (session != null) {
                purchaseSuccessMessage = (String) session.getAttribute("purchaseSuccess");
                session.removeAttribute("purchaseSuccess"); // Xóa thông điệp sau khi đã sử dụng
            }
        %>
        <% if (purchaseSuccessMessage != null) { %>
        <script type="text/javascript">
            alert("<%= purchaseSuccessMessage %>");
        </script>
        <% } %>
    </head>

    <body>
        <div id="page">
            <div class="container">
                <div class="outer-row row">
                    <div class="col-md-12">
                        <!--===================================
                                            =            Header            		   =
                                            =====================================-->
                        <jsp:include page="header-homepage.jsp"></jsp:include>
                            <!--=====  End of Header  ======-->

                            <!--===========================================
                                                =            Cart content section            =
                                                ============================================-->

                            <div class="page-content mt-50 mb-10">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="page-title">
                                                <h2>Cart</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <!-- Cart Table -->
                                            <div class="cart-table table-responsive mb-40">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="pro-thumbnail">Image</th>
                                                            <th class="pro-title">Product</th>
                                                            <th class="pro-price">Price</th>
                                                            <th class="pro-quantity">Quantity</th>
                                                            <th class="pro-subtotal">Total</th>
                                                            <th class="pro-remove">Remove</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${cart.listOrderDetails}"
                                                               var="orderDetails" varStatus="status">
                                                        <c:forEach items="${listProduct}" var="productInList">
                                                            <c:if test="${productInList.productID == orderDetails.productId}">
                                                                <c:set var="currentProduct" value="${productInList}"></c:set>
                                                            </c:if>
                                                        </c:forEach>
                                                        <tr>

                                                            <td class="pro-thumbnail"><a
                                                                    href="single-product-variable.html"><img
                                                                        class="img-fluid" width="250" height="250" src="${currentProduct.image}"
                                                                        alt="Product"></a></td>
                                                            <td class="pro-title"><a
                                                                    href="single-product-variable.html">${currentProduct.productName}</a></td>
                                                            <td class="pro-price"><span>${currentProduct.price} ₫</span></td>
                                                            <td class="pro-quantity">
                                                                <form action="check-out?action=change-quantity" id="change-quantity" method ="POST">
                                                                    <input type="hidden"
                                                                           name="id" 
                                                                           value="${currentProduct.productID}" />
                                                                    <button type="button" class="fa fa-minus qty-btn"  onclick="adjustQuantity(this, -1)"></button>
                                                                    <input class="spin-number-output bg-light no-margin" name="quantity" type="text" readonly="" value="${orderDetails.quantity}">
                                                                    <button type="button" class="fa fa-plus qty-btn" onclick="adjustQuantity(this, 1)"></button>                                                                       
                                                                </form>

                                                            </td>
                                                            <td class="pro-subtotal"><span>${currentProduct.price * orderDetails.quantity} ₫</span></td>
                                                    <form action="check-out?action=delete&id=${currentProduct.productID}" id="deletecart" method="POST">
                                                        <td class="pro-remove">
                                                            <button type="submit"><i class="fa fa-trash-o"></i></button>
                                                        </td>
                                                    </form>
                                                    </tr>

                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="row">
                                            <!-- Cart Summary -->
                                            <div class="col-lg-6 col-12 mb-40 d-flex">
                                                <div class="cart-summary">
                                                    <div class="cart-summary-wrap">
                                                        <h4>Cart Summary</h4>
                                                        <p>Sub Total <span id="sub-total">$1250.00</span></p>
                                                        <p>Shipping Cost <span id="shipping-cost">$0</span></p>
                                                        <h2>Grand Total <span id="grand-total">$1250.00</span></h2>
                                                    </div>
                                                    <form class="form-customer" action="check-out?action=purchase" method="POST">
                                                        <div class="cart-summary-button">
                                                            <button type="submit" class="checkout-btn" id="checkout-button" onclick="this.closest('form').submit()">Checkout</button>                                                            
                                                            <button class="update-btn">Update Cart</button>      
                                                        </div>
                                                    </form>

                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--====  End of Cart content section  ====-->

                        <!--============================
                        =            footer            =
                        =============================-->
                        <jsp:include page="footer-homepage.jsp"></jsp:include>
                        <!--====  End of footer  ====-->
                    </div>
                </div>
            </div>
        </div>



        <!-- scroll to top  -->
        <a href="#" class="scroll-top"></a>
        <!-- end of scroll to top -->



        <!-- ************************* JS ************************* -->
        <!-- jQuery JS -->
        <script src="assets/js/vendor/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="assets/js/popper.min.js"></script>

        <!-- Bootstrap JS -->
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Plugins JS -->
        <!--<script src="assets/js/plugins.js"></script>-->

        <!-- Main JS -->
        <!--<script src="assets/js/main.js"></script>-->

        <script>
                                                                window.addEventListener('DOMContentLoaded', function () {
                                                                    updateSubTotal();
                                                                });
                                                                function adjustQuantity(button, change) {
                                                                    var quantityInput = button.parentNode.querySelector('input[name="quantity"]');
                                                                    var currentQuantity = parseInt(quantityInput.value);
                                                                    var newQuantity = currentQuantity + change;

                                                                    // Ensure the quantity never goes below 1
                                                                    newQuantity = newQuantity < 1 ? 1 : newQuantity;
                                                                    quantityInput.value = newQuantity;

                                                                    // Update the line item total and overall totals
                                                                    updateSubTotal();
                                                                    //lấy ra form
                                                                    let form = document.getElementById('change-quantity');
                                                                    form.submit();
                                                                }

                                                                function updateSubTotal() {
                                                                    var subTotal = 0;
                                                                    var rows = document.querySelectorAll('.cart-table tbody tr');
                                                                    rows.forEach(function (row) {
                                                                        var price = parseFloat(row.querySelector('.pro-price span').textContent.replace('₫', ''));
                                                                        var quantity = parseInt(row.querySelector('.pro-quantity input[name=quantity]').value);

                                                                        var total = price * quantity;
                                                                        row.querySelector('.pro-subtotal span').textContent = total + ' ₫';
                                                                        subTotal += total;
                                                                    });
                                                                    document.getElementById('sub-total').textContent = subTotal + ' ₫';
                                                                    document.getElementById('grand-total').textContent = subTotal + ' ₫';
                                                                }
                                                                document.getElementById("checkout-button").addEventListener("click", function () {
                                                                    // Gửi yêu cầu mua hàng đến máy chủ
                                                                    // Xử lý các bước cần thiết để hoàn tất giao dịch

                                                                    // Hiển thị thông báo mua hàng thành công
                                                                    alert("Mua hàng thành công!");
                                                                });


        </script>
    </body>

</html>