<%-- 
    Document   : pharmacie
    Created on : 18 avr. 2023, 18:41:21
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pharmacie</title>
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
        <%@include file="common_html_css_js_file/nav_bar.jsp" %>
        <main id="main">
            <div class="container">
                <!--Product Categories-->
                <div class="wrap-show-advance-info-box style-1">
                    <h3 class="title-box">Categories de medicament</h3>

                    <div class="wrap-products">
                        <div class="wrap-product-tab tab-style-1">
                            <div class="tab-control">
                                <a href="#fashion_1a" class="tab-control-item active">Smartphone</a>
                                <a href="#fashion_1b" class="tab-control-item">Watch</a>
                                <a href="#fashion_1c" class="tab-control-item">Laptop</a>
                                <a href="#fashion_1d" class="tab-control-item">Tablet</a>
                            </div>
                            <div class="tab-contents">

                                <div class="tab-content-item active" id="fashion_1a">
                                    <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}' >   

                                        <div class="product product-style-2 equal-elem ">
                                            <div class="product-thumnail">
                                                <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                    <figure><img src="images/products/fashion_06.jpg" width="800" height="800" alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
                                                </a>
                                                <div class="group-flash">
                                                    <span class="flash-item new-label">new</span>
                                                    <span class="flash-item new-label">Stock : 23</span>
                                                </div>
                                                <div class="wrap-btn">
                                                    <a href="#" class="function-link">Modifier</a>&nbsp;&nbsp;&nbsp;
                                                    <a href="#" class="function-link">Supprimer</a>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <a href="#" class="product-name">
                                                    <span>Radiant-360 R6 Wireless Omnidirectional Speaker [White]</span>
                                                </a>
                                                <a href="#" class="product-name">
                                                    <span>Radiant-360 R6 Wireless Omnidirectional Speaker [White]</span>
                                                </a>
                                                <div class="wrap-price"><span class="product-price">$250.00</span></div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="tab-content-item" id="fashion_1b">
                                    <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container " data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>

                                    </div>
                                </div>

                                <div class="tab-content-item" id="fashion_1c">
                                    <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>

                                    </div>
                                </div>

                                <div class="tab-content-item" id="fashion_1d">
                                    <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>			
            </div>

        </main>

        <%@include file="common_html_css_js_file/js_files.jsp" %>
    </body>
</html>
