<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <!-- header top nav -->
    <div class="header-top-nav">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 offset-lg-3 col-md-6 col-sm-12">
                    <!-- language and currency changer -->
                    <div
                        class="language-currency-changer d-flex justify-content-center justify-content-md-start justify-content-lg-center">
                        <div class="language-changer">
                            <img width="16" height="11" src="assets/images/flags/1.webp" alt="">
                            <a href="#" id="changeLanguage"><span id="languageName">English <i
                                        class="fa fa-caret-down"></i></span></a>
                            <div class="language-currency-list hidden" id="languageList">
                                <ul>
                                    <li><a href="#"><img width="16" height="11" src="assets/images/flags/1.webp" alt=""> English</a></li>
                                    <li><a href="#"><img width="16" height="11" src="assets/images/flags/2.webp" alt=""> Français</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="currency-changer">
                            <a href="#" id="changeCurrency"><span id="currencyName">USD <i
                                        class="fa fa-caret-down"></i></span></a>
                            <div class="language-currency-list hidden" id="currencyList">
                                <ul>
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">EURO</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- end of language and currency changer -->
                </div>


                <div class="col-md-6 col-sm-12">
                    <!-- user information menu -->
                    <div class="user-information-menu">
                        <ul>
                            <c:if test="${account != null}">     
                                <c:if test="${account.roleId == 1}">
                                    <li><a href="${pageContext.request.contextPath}/admin/dashboard">My Profile</a> <span class="separator">|</span></li>
                                    </c:if>
                                    <c:if test="${account.roleId == 2}">
                                    <li><a href="${pageContext.request.contextPath}/dashboard">My Profile</a> <span class="separator">|</span></li>
                                    </c:if>
                                </c:if>
                                <c:if test="${account != null}">    
                                <li><a href="cart.jsp">Cart <span class="separator">|</span> </li>
                                </c:if>
                                <c:if test="${account == null}">     
                                <li><a href="${pageContext.request.contextPath}/authen?action=login">Sign In</a> <span class="separator">|</span></li>
                                </c:if>
                                <c:if test="${account == null}">     
                                <li><a href="${pageContext.request.contextPath}/authen?action=register">Sign Up</a> <span class="separator">|</span></li>
                                </c:if>
                                <c:if test="${account != null}">     
                                <li><a href="${pageContext.request.contextPath}/authen?action=logout">Sign Out</a></li>
                                </c:if>
                        </ul>
                    </div>
                    <!-- end of user information menu -->
                </div>

            </div>
        </div>
    </div>
    <!-- end of header top nav -->

    <!-- header bottom -->

    <!-- header content -->
    <div class="header-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 offset-lg-0 text-md-start text-sm-center">
                    <!-- logo -->
                    <div class="logo">
                        <a href="${pageContext.request.contextPath}/home"><img width="167" height="69" src="assets/images/logo.webp" class="img-fluid" alt="logo"></a>
                    </div>
                    <!-- end of logo -->
                </div>
                <div class="col-lg-6 col-md-8">
                    <!-- header search bar -->
                    <form action="home" method="GET">
                        <div class="header-search-bar">
                            <div class="input-group">
                                <select name="search" id="categoryName">
                                    <option value="searchByName">Search by Name</option>
                                    <option value="searchByPriceIncrease">Search by Price Increase</option>
                                    <option value="searchByPriceDecrease">Search by Price Decrease</option>
                                </select>
                                <div class="input-group-append">
                                    <!--<input type="hidden" name="" value="search"/>-->
                                    <input type="search" name="keyword" placeholder="Search" aria-label="Search by Name">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- end of header search bar -->
                </div>

            </div>
        </div>
    </div>
    <!-- end of header content -->

    <!-- header navigation section -->
    <div class="header-navigation">
        <div class="container">
            <div class="navigation-container">
                <div class="row">
                    <div class="col-lg-3 d-none d-lg-block">
                        <!-- ======  Header menu left text  ======= -->
<!--                        <p class="call-us-text">Shop</p>-->
                    </div>
                    <div class="col-lg-9 col-md-12">

                        <!-- Header navigation right side-->

                        <!-- main menu start -->
                        <div class="main-menu">
                            <nav>
                                <ul>
                                    <li class="active menu-item-has-children"><a href="#">Home</a>

                                        <!-- ======  Submenu block  ======= -->

                                        <ul class="sub-menu">
                                            <li class="active"><a href="index.html">Home One</a></li>
                                            
                                        </ul>

                                        <!-- ====  End of Submenu block  ==== -->

                                    </li>
                                    <li class="menu-item-has-children"><a href="#">Shop</a>

                                        <!-- ======  Submenu block  ======= -->

                                        <ul class="sub-menu">
                                            <li class="menu-item-has-children"><a href="#">shop grid</a>
                                                <ul class="sub-menu">
                                                    <li class="active"><a href="shop-left-sidebar.html">shop left sidebar</a></li>
                                                    <li><a href="shop-left-sidebar-wide.html">shop left sidebar wide</a></li>
                                                    <li><a href="shop-right-sidebar.html">shop right sidebar</a></li>
                                                    <li><a href="shop-right-sidebar-wide.html">shop right sidebar wide</a></li>
                                                    <li><a href="shop-no-sidebar-3.html">shop no sidebar 3 column</a></li>
                                                    <li><a href="shop-no-sidebar-3-wide.html">shop no sidebar 3 column wide</a></li>
                                                    <li><a href="shop-no-sidebar-4.html">shop no sidebar 4 column</a></li>
                                                    <li><a href="shop-no-sidebar-4-wide.html">shop no sidebar 4 column wide</a></li>
                                                    <li><a href="shop-no-sidebar-5.html">shop no sidebar 5 column</a></li>
                                                    <li><a href="shop-no-sidebar-5-wide.html">shop no sidebar 5 column wide</a></li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children"><a href="#">shop List</a>
                                                <ul class="sub-menu">
                                                    <li><a href="shop-list.html">shop list</a></li>
                                                    <li><a href="shop-list-wide.html">shop list wide</a></li>
                                                    <li><a href="shop-left-sidebar-list.html">shop left sidebar List</a></li>
                                                    <li><a href="shop-left-sidebar-list-wide.html">shop left sidebar List wide</a></li>
                                                    <li><a href="shop-right-sidebar-list.html">shop right sidebar List</a></li>
                                                    <li><a href="shop-right-sidebar-list-wide.html">shop right sidebar List wide</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children"><a href="#">Shop product</a>
                                                <ul class="sub-menu">
                                                    <li><a href="single-product.html">shop product</a></li>
                                                    <li><a href="single-product-wide.html">shop product wide</a></li>
                                                    <li><a href="single-product-external.html">shop product external</a></li>
                                                    <li><a href="single-product-external-wide.html">shop product external wide</a></li>
                                                    <li><a href="single-product-variable.html">shop product variable</a></li>
                                                    <li><a href="single-product-variable-wide.html">shop product variable wide</a></li>
                                                    <li><a href="single-product-group.html">shop product group</a></li>
                                                    <li><a href="single-product-group-wide.html">shop product group wide</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <!-- ====  End of Submenu block  ==== -->

                                    </li>
                                    <li class="menu-item-has-children"><a href="#">Blog</a>
                                        <!-- ======  Mega menu block  ======= -->
                                        <ul class="mega-menu three-column">
                                            <li><a href="#" class="d-none">Blog Box</a>
                                                <ul>
                                                    <li><a href="blog-1-column-left-sidebar.html">Blog 1 column left sidebar</a></li>
                                                    <li><a href="blog-1-column-right-sidebar.html">Blog 1 column right sidebar</a></li>
                                                    <li><a href="blog-2-column-left-sidebar.html">Blog 2 column left sidebar</a></li>
                                                    <li><a href="blog-2-column-right-sidebar.html">Blog 2 column right sidebar</a></li>
                                                    <li><a href="blog-3-column.html">Blog 3 column</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="d-none">Blog Wide</a>
                                                <ul>
                                                    <li><a href="blog-1-column-left-sidebar-wide.html">Blog 1 column left sidebar
                                                            wide</a></li>
                                                    <li><a href="blog-1-column-right-sidebar-wide.html">Blog 1 column right sidebar
                                                            wide</a></li>
                                                    <li><a href="blog-2-column-left-sidebar-wide.html">Blog 2 column left sidebar
                                                            wide</a></li>
                                                    <li><a href="blog-2-column-right-sidebar-wide.html">Blog 2 column right sidebar
                                                            wide</a></li>
                                                    <li><a href="blog-3-column-wide.html">Blog 3 column wide</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="d-none">Single Blog</a>
                                                <ul>
                                                    <li><a href="single-blog-left-sidebar.html">Single blog left sidebar</a></li>
                                                    <li><a href="single-blog-left-sidebar-wide.html">Single blog left sidebar wide</a>
                                                    </li>
                                                    <li><a href="single-blog-right-sidebar.html">Single blog right sidebar</a></li>
                                                    <li><a href="single-blog-right-sidebar-wide.html">Single blog right sidebar wide</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <!-- ====  End of Mega menu block  ==== -->
                                    </li>

                                    <li class="menu-item-has-children"><a href="#">Pages</a>
                                        <!-- ======  Submenu block  ======= -->

                                        <ul class="sub-menu">
                                            <li><a href="cart.html">cart</a></li>
                                            <li><a href="cart-wide.html">cart wide</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="checkout-wide.html">checkout wide</a></li>
                                            <li><a href="compare.html">compare</a></li>
                                            <li><a href="compare-wide.html">compare wide</a></li>
                                            <li><a href="store.html">store</a></li>
                                            <li><a href="store-wide.html">store wide</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                            <li><a href="wishlist-wide.html">wishlist wide</a></li>
                                            <li><a href="my-account.html">My account</a></li>
                                            <li><a href="my-account-wide.html">My account wide</a></li>
                                            <li><a href="login-register.html">Login register</a></li>
                                            <li><a href="login-register-wide.html">Login register wide</a></li>
                                        </ul>

                                        <!-- ====  End of Submenu block  ==== -->
                                    </li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </nav>

                            <!-- Mobile Menu -->
                            <div class="mobile-menu order-12 d-block d-lg-none"></div>

                        </div>

                        <!-- end of Header navigation right side-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end of header navigation section -->

    <!-- end of header bottom -->
</header>

