<%-- 
    Document   : statistiques
    Created on : 19 avr. 2023, 03:23:08
    Author     : abdou
--%>

<%@page import="com.mycompany.pharmacy.aide.ConnectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Statistiques</title>
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
    <body>
        <%@include file="common_html_css_js_file/nav_bar.jsp" %>
        <h1>statistiques</h1>
        <%
            out.println(ConnectionDB.getFactory());
        %>
        <%@include file="common_html_css_js_file/js_files.jsp" %>
    </body>
</html>
