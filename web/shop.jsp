<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="pageSize" value="9" />

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

    </head>

    <body>
        <div id="page">
            <div class="container">
                <div class="outer-row row">
                    <div class="col-md-12">
                        <!--===================================
                        =            Header            		   =
                        =====================================-->


                        <!--=====  End of Header  ======-->
                        <jsp:include page="header-homepage.jsp"></jsp:include>
                            <div style="margin-left:15px ">
                                <iframe width="1080" height="315" src="https://www.youtube.com/embed/AeCakUK_1Js?si=8YOnnJHqXvjikpXT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                            </div>

                        </div>
                        <div class="col-lg-9 col-md-8 mb-50">

                            <div class="homepage-main-content">
                                <!-- horizontal product slider -->
                                <div style="margin-left:  250px">
                                    <div class="row">
                                    <c:forEach items="${listProduct}" 
                                               var="product" 
                                               begin="${(pageControl.page - 1) * pageSize}"
                                               end="${pageControl.page * pageSize - 1}">
                                        <div class="col-lg-4 col-md-6">
                                            <!-- horizontal product slider container -->
                                            <!-- single product -->
                                            <div class="single-product">
                                                <div class="single-product-content">
                                                    <div class="product-image new-badge">
                                                        <a href="product-details?id=${product.productID}">
                                                            <img  style="width: 300px; height: 300px; object-fit: cover;" src="${product.image}"  class="img-fluid" alt="">
                                                            <img  style="width: 300px; height: 300px; object-fit: cover;" src="${product.image}"  class="img-fluid" alt="">
                                                        </a>
                                                        <div class="image-btn">
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal-container"><i
                                                                    class="fa fa-search"></i></a>
                                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                                        </div>
                                                    </div>
                                                    <h5 class="product-name"><a href="single-product-variable.html">${product.getProductName()}</a></h5>
                                                    <div class="price-box">
                                                        <h4>${product.price}</h4>
                                                    </div>

                                                    <a href="#" class="add-to-cart-btn" data-bs-toggle="modal"
                                                       data-bs-target="#add-to-cart-modal-container"><i class="fa fa-shopping-cart"></i> Add
                                                        to cart</a>
                                                </div>
                                            </div>
                                            <!-- end of single product -->
                                            <!-- end of horizontal product slider container -->
                                        </div>
                                    </c:forEach>
                                    <div class="col-lg-12">
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-center">
                                                <li class="page-item ${pageControl.page <= 1 ? 'disabled' : ''}">
                                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                                </li>
                                                <c:forEach var="pageNumber" begin="1" end="${pageControl.totalPage}">
                                                    <li class="page-item ${pageNumber == pageControl.page ? 'active' : ''}">
                                                        <a class="page-link" href="?page=${pageNumber}">${pageNumber}</a>
                                                    </li>
                                                </c:forEach>
                                                <li class="page-item ${pageControl.page >= pageControl.totalPage ? 'disabled' : ''}" >
                                                    <a class="page-link" href="?page=${pageControl.page + 1}">Next</a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <!-- end of horizontal product slider -->
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>

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
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>
</div>
</body>

</html>