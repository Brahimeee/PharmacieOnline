<%-- 
    Document   : register1
    Created on : 27 avr. 2023, 20:39:23
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Code verification</title>
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

        <!--header-->

        <!--main area-->
        <main id="main" class="main-site left-sidebar">

            <div class="container">

                <div class="wrap-breadcrumb">
                    <ul>

                    </ul>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 col-md-offset-3">							
                        <div class=" main-content-area">
                            <div class="wrap-login-item ">
                                <div class="register-form form-item ">
                                    <form class="form-stl" action="VerifyCode" name="frm-login" method="post" >									
                                        <fieldset class="wrap-input">
                                            <label for="frm-reg-lname">code verification</label>
                                            <input type="text" id="frm-reg-lname" name="codeVerification" placeholder="code verification" required>
                                        </fieldset>                        
                                        <input type="submit" class="btn btn-sign" value="Enregistrer" name="Enregistrer"><br/><br />
                                        <div>
                                            <a href="pharmacie_register.jsp" type="submit" class="link-term mercado-item-title" class="btn btn-sign" value="Suivant" name="Suivant">Suivant</a><br>
                                            <a href="pharmacien_register.jsp" type="submit" class="link-term mercado-item-title" class="btn btn-sign" value="Presedent" name="Presedant">Page présedent</a>
                                        </div> 
                                    </form>

                                </div>											
                            </div>
                        </div><!--end main products area-->		
                    </div>
                </div><!--end row-->

            </div><!--end container-->

        </main>
        <!--main area-->

        <!--footer area-->


        <script src="js/jquery-1.12.4.minb8ff.js?ver=1.12.4"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/chosen.jquery.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/functions.js"></script>
        <!--footer area-->
    </body>
</html>