<%-- 
    Document   : gérerMédicament
    Created on : 19 avr. 2023, 03:11:08
    Author     : abdou
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.pharmacy.entities.Medicament"%>
<%@page import="com.mycompany.pharmacy.aide.ConnectionDB"%>
<%@page import="com.mycompany.pharmacy.dao.MedicamentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gérer médicament</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic&amp;subset=latin,latin-ext" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,400italic,600,600italic,700,700italic&amp;subset=latin,latin-ext" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
        <link rel="stylesheet" type="text/css" href="css/chosen.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/color-01.css">
        <link rel="stylesheet" href="css/gérer-médicament.css"/>
    </head>
    <body>
        <%@include file="common_html_css_js_file/nav_bar.jsp" %>
        <%
            String messages1 = (String) session.getAttribute("messages");
            if (messages1 != null) {
                session.removeAttribute("messages");
            }
        %>
        <%@include file="components/messages.jsp" %>
        <div class="left-section">
            <a href="components/ajouter.jsp" title="Ajouter"><i class="material-icons add">add</i></a>
        </div>
        <div class="tab-content-item active" id="fashion_1a">
            <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}' >   
                <%  
                    String search = request.getParameter("search");
                    MedicamentDao mdao = new MedicamentDao(ConnectionDB.getFactory());
                    List<Medicament> medicaments;
                    if (search != null && !search.isEmpty()) {
                        medicaments = mdao.searchByName(search);
                    } else {
                        medicaments = mdao.getAllMedicaments();
                    }
                %>
                <%
                    for (Medicament m : medicaments) {
                %>
                <div class="product product-style-2 equal-elem ">
                    <div class="product-thumnail">
                        <a href="#" title="<%= m.getNom()%>">
                            <figure><img src="images/medicaments/<%= m.getImage()%>" width="800" height="800" alt="<%= m.getNom()%>"></figure>
                        </a>
                        <div class="group-flash">
                            <!--<span class="flash-item new-label">new</span>-->
                            <span class="flash-item new-label">Stock : <%= m.getQnt()%></span>
                        </div>
                        <div class="wrap-btn">
                            <a href="components/modifier.jsp?idMedicament=<%= m.getidMedicament()%>" class="function-link">Modifier</a>&nbsp;&nbsp;&nbsp;
                            <a href="DeleteMedicamentServlet?idMedicament=<%= m.getidMedicament()%>" class="function-link">Supprimer</a>
                        </div>
                    </div>
                    <div class="product-info">
                        <a href="#" class="product-name">
                            <strong><span><%= m.getNom()%></span></strong>
                        </a>
                        <a href="#" class="product-name">
                            <span><%= m.getDescription()%></span>
                        </a>
                        <div class="wrap-price"><span class="product-price"><%= m.getPrixUnitaire()%> UM</span></div>
                    </div>
                </div>
                <%
                    }
                %>




            </div>
        </div>
        <%@include file="common_html_css_js_file/js_files.jsp" %>
    </body>
</html>
