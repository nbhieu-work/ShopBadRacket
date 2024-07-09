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
                                                =            Login / register content section            =
                                                ============================================-->

                            <!-- Account Area Start -->
                            <div class="account-area page-content mb-50">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="page-title">
                                                <h2>Login - Register</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-xs-12 mb-30">
                                            <!-- Login Form s-->
                                            <form action="authen?action=login" class="login-form" method="POST">

                                                <div id="login-form">
                                                    <h4 class="login-title">Login</h4>

                                                    <div class="row">
                                                        <div class="col-md-12 col-12 mb-20">
                                                            <label>Username*</label>
                                                            <input class="mb-0" type="text" placeholder="Email Address" name="username">
                                                        </div>
                                                        <div class="col-12 mb-20">
                                                            <label>Password</label>
                                                            <input class="mb-0" type="password" placeholder="Password" name="password">
                                                        </div>
                                                        <div class="col-12 mb-20">
                                                            ${error}
                                                        </div>
                                                        <div class="col-md-8">
                                                            <button type="submit" class="register-button mt-0">Login</button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="col-md-6 col-xs-12">
                                            <form action="authen?action=register" method="POST" class="login-form">

                                                <div id="register-form">
                                                    <h4 class="login-title">Register</h4>

                                                    <div class="row">
                                                        <div class="col-md-12 mb-20">
                                                            <label>Username*</label>
                                                            <input class="mb-0" type="text" placeholder="Username " name="username">
                                                        </div>
                                                        <div class="col-md-12 mb-20">
                                                            <label>Email*</label>
                                                            <input class="mb-0" type="text" placeholder="Email Address" name="email">
                                                        </div>
                                                        <div class="col-lg-6 mb-20">
                                                            <label>Password</label>
                                                            <input class="mb-0" type="password" placeholder="Password" name="password">
                                                        </div>
                                                        <div class="col-lg-6 mb-20">
                                                            ${message}
                                                        </div>
                                                        <div class="col-12">
                                                            <button class="register-button mt-0">Register</button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Account Area End -->

                            <!--====  End of Login / register content section  ====-->


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