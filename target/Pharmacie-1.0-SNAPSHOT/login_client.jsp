<%-- 
    Document   : login_client
    Created on : 15 mai 2023, 13:04:22
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic&amp;subset=latin,latin-ext" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,400italic,600,600italic,700,700italic&amp;subset=latin,latin-ext" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
        <link rel="stylesheet" type="text/css" href="css/chosen.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/color-01.css">
    </head>
    <body class="home-page home-01 ">

        <!-- mobile menu -->
        <div class="mercado-clone-wrap">
            <div class="mercado-panels-actions-wrap">
                <a class="mercado-close-btn mercado-close-panels" href="#">x</a>
            </div>
            <div class="mercado-panels"></div>
        </div>


        <main id="main" class="main-site left-sidebar">

            <div class="container">

                <div class="wrap-breadcrumb">
                    <ul>

                    </ul>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 col-md-offset-3">
                        <div class=" main-content-area">
                            <form action="ClientLoginServlet" method="post">
                                <div class="wrap-login-item ">
                                    <div class="login-form form-item form-stl">
                                        <%
                                            String message = (String) session.getAttribute("messages");
                                            if (message != null) {
                                        %>
                                        <p style="color: red;">L'email ou le mot de passe incorrect</p>
                                        <%
                                                session.removeAttribute("messages");
                                            }
                                        %>
                                        <form name="frm-login">
                                            <fieldset class="wrap-title">
                                                <h3 class="form-title">Se connecter à votre compte.</h3>										
                                            </fieldset>
                                            <fieldset class="wrap-input">
                                                <label for="frm-login-uname">Email:</label>
                                                <input type="text" id="frm-login-uname" name="email" placeholder="Type your email address">
                                            </fieldset>
                                            <fieldset class="wrap-input">
                                                <label for="frm-login-pass">Password:</label>
                                                <input type="password" id="frm-login-pass" name="pass" placeholder="************">
                                            </fieldset>

                                            <fieldset class="wrap-input">
                                                <label class="remember-field">
                                                    <input class="frm-input " name="rememberme" id="rememberme" value="forever" type="checkbox"><span>Remember me</span>
                                                </label>
                                                <a class="link-function left-position" href="client_register.jsp" title="Forgotten password?">Créer compte</a>
                                            </fieldset>
                                            <input type="submit" class="btn btn-submit" value="Login" name="submit">
                                        </form>
                                    </div>												
                                </div>
                            </form>
                        </div><!--end main products area-->		
                    </div>
                </div><!--end row-->

            </div><!--end container-->

        </main>


        <script src="js/jquery-1.12.4.minb8ff.js?ver=1.12.4"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/chosen.jquery.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/functions.js"></script>
        <!--footer area-->
    </body>
</html>