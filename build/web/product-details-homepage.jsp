<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <jsp:include page="header-homepage.jsp"></jsp:include>

                            <!--=====  End of Header  ======-->

                            <!--===========================================
                                =            Single product content section            =
                                ============================================-->

                            <section class="single-product-page-content">
                                <div class="container">
                                    <div class="row">

                                        <div class="col-lg-9 col-md-12">
                                            <div class="row">
                                                <div class="col-lg-5 col-md-7">
                                                    <div class="single-product-page-image-gallery">
                                                        <!-- product quickview image gallery -->
                                                        <!--Modal Tab Content Start-->
                                                        <div class="tab-content product-details-large  sale-badge new-badge">
                                                            <div class="tab-pane fade show active" id="single-slide1"
                                                                 role="tabpanel" aria-labelledby="single-slide-tab-1">
                                                                <!--Single Product Image Start-->
                                                                <div class="single-product-img img-full sale-badge new-badge">
                                                                    <img width="458" height="458" src="${product.image}"
                                                                         class="img-fluid" alt="">
                                                                </div>
                                                                <!--Single Product Image End-->
                                                            </div>
                                                        </div>
                                                        <!--Modal Content End-->
                                                        <!-- end of product quickview image gallery -->
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 col-md-5">
                                                    <!-- product quick view description -->
                                                    <div class="product-options">
                                                        <h2 class="product-title">${product.productName}</h2>
                                                    <p class="condition"><span>Condition:</span> New</p>
                                                    <h2 class="product-price">${product.price}</h2>
                                                    <p class="product-description">Available Stock Quantity: ${product.stockQuantity}</p>
                                                    <form action="check-out?action=add-product" method="POST">
                                                        <div style="display:none">
                                                            <input name="id" value="${product.productID}">
                                                        </div>
                                                        <p class="quantity">Quantity:
                                                            <span class="input-group-btn">
                                                            </span>
                                                            <span class="pro-qty counter">
                                                                <input type="text" value="1" min="1" name="quantity" max="${product.stockQuantity}" class="mr-5"/>
                                                            </span>

                                                        </p>
                                                        <div style="display:none">
                                                            <input name="id" value="${product.productID}">
                                                        </div>
                                                        <a href="#" onclick="return this.closest('form').submit()" class="add-to-cart-btn">
                                                            <i class="fa fa-shopping-cart"></i>
                                                            Add to Cart
                                                        </a>
                                                    </form>

                                                </div>
                                                <!-- end ofproduct quick view description -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <!--====  End of Single product content section  ====-->

                        <!--====  End of newsletter section  ====-->

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

    </body>

</html>
