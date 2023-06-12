<%-- 
    Document   : accueil
    Created on : 7 juin 2023, 13:06:16
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
        <link rel="stylesheet" href="css/all.min.css" />
        <link rel="stylesheet" href="css/framework.css" />
        <link rel="stylesheet" href="css/master.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;500&display=swap" rel="stylesheet" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accueil</title>
        <style>

            #categories {
                height: 40px;
                outline: none;
                border: 1px solid #eee;
                border-radius: 10px;
                cursor: pointer;
            }


        </style>
    </head>
    <body>
        <div class="page d-flex">
            <div class="content w-full">
                <!-- Start Head -->
                <div class="head bg-white p-15 between-flex">
                    <form method="POST" action="index.jsp">
                        <div class="search p-relative">
                            <input class="p-10" name="search" type="search" placeholder="Rechercher..." />                            
                        </div>
                    </form>

                    <div>
                        <input list="categorie" id="categories" name="categorie" placeholder="Catégorie"/>
                        <datalist id="categorie">
                            <option value="cat1">
                            <option value="cat2">
                            <option value="cat3">
                            <option value="cat4">
                        </datalist>
                    </div>
                    <div>
                        <input list="pharmacies" id="categories" name="pharmacies" placeholder="Pharmacie"/>
                        <datalist id="pharmacies">
                            <option value="pha1">
                            <option value="pha2">
                            <option value="pha3">
                            <option value="pha4">
                        </datalist>
                    </div>
                    <div>
                        <a href="reservation.jsp" title="reservation"><i class="fas fa-shopping-cart" style="font-size: 24px;"></i>
                        </a>
                    </div>
                    <div class="add-medicament">

                        <a href="login.jsp" class="visit d-block fs-14 bg-blue c-white w-fit btn-shape">
                            Pharmacien
                        </a>
                    </div>
                </div>
                <!-- End Head -->
                <h1 class="p-relative">Médicaments</h1>
                <%
                    // search by name
                    String search = request.getParameter("search");
                    MedicamentDao mdao = new MedicamentDao(ConnectionDB.getFactory());
                    List<Medicament> medicaments;
                    if (search != null && !search.isEmpty()) {
                        medicaments = mdao.searchByName(search);
                    } else {
                        medicaments = mdao.getAllMedicaments();
                    }
                %>

                <div class="courses-page d-grid m-20 gap-20"> 
                    <%
                        for (Medicament m : medicaments) {
                    %>
                    <div class="course bg-white rad-6 p-relative">
                        <a class="medic-details" href="details-medicament-client.jsp" title="">
                            <img class="cover" src="imgs/<%= m.getImage()%>" alt="" />
                            <div class="p-20" >
                                <h4 class="m-0"><%= m.getNom()%></h4>
                                <p class="description c-grey mt-15 fs-14">
                                    <%= m.getDescription()%>
                                </p>
                            </div>
                        </a>
                        <div class="info p-15 p-relative">                           
                            <a href="login_client.jsp" class="update fs-14 bg-orange c-white w-fit btn-shape">
                                Acheter
                            </a>
                            <a href="reservation.jsp" class="delete fs-14 bg-red c-white w-fit btn-shape">
                                Reserver
                            </a>  
                        </div>
                        <div class="info p-15 p-relative">                           
                            <span>Stock : <%= m.getQuantite()%></span>
                            <span>Prix : <%= m.getPrixUnitaire()%> UM</span>  
                        </div>
                    </div>
                <% } %>        
                </div>
            </div>
        </div>
    </body>
</html>
