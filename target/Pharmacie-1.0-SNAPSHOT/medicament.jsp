<%-- 
    Document   : Medicament
    Created on : 6 juin 2023, 23:30:29
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
        <title>Medicaments</title>
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
            <!-- Start sidebar -->
            <div class="sidebar bg-white p-20 p-relative">
                <h3 class="p-relative txt-c mt-0">Ma Pharmacie</h3>
                <ul>
                    <li>
                        <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="dashboard_pharmacien.jsp">
                            <i class="fas fa-home"></i>
                            <span>Accueil</span>
                        </a>
                    </li>
                    <li>
                        <a class="active d-flex align-center fs-14 c-black rad-6 p-10" href="medicament.jsp">
                            <i class="fas fa-medkit"></i>
                            <span>Médicaments</span>
                        </a>
                    </li>
                    <li>
                        <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="notifications.jsp">
                            <i class="fas fa-bell"></i>
                            <span>Notifications</span>
                        </a>
                    </li>
                    <li>
                        <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="#">
                            <i class="fas fa-sign-out-alt"></i>
                            <span>Déconnecter</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End sidebar -->
            <div class="content w-full">
                <!-- Start Head -->
                <div class="head bg-white p-15 between-flex">
                    <form method="POST" action="medicament.jsp">
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
                    <div class="add-medicament">
                        <a href="components/ajouter.jsp" class="visit d-block fs-14 bg-blue c-white w-fit btn-shape">
                            <i class="fas fa-plus"></i>
                        </a>
                    </div>
                </div>
                <!-- End Head -->
                <%
                    String messages1 = (String) session.getAttribute("messages");
                    if (messages1 != null) {
                        session.removeAttribute("messages");
                    }
                %>

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
                        <a class="medic-details" href="details-medicaments.jsp" title="plus d'informations">
                            <img class="cover" src="imgs/<%= m.getImage()%>" alt="" />
                            <div class="p-20" >
                                <h4 class="m-0"><%= m.getNom()%></h4>
                                <p class="description c-grey mt-15 fs-14">
                                    <%= m.getDescription()%>
                                </p>
                            </div>
                        </a>
                        <div class="info p-15 p-relative">                           
                            <a href="components/modifier.jsp?idMedicament=<%= m.getIdMedicament()%>" class="update fs-14 bg-orange c-white w-fit btn-shape">
                                Modifier
                            </a>
                            <a href="DeleteMedicamentServlet?idMedicament=<%= m.getIdMedicament()%>" class="delete fs-14 bg-red c-white w-fit btn-shape">
                                Supprimer
                            </a>  
                        </div>
                        <div class="info p-15 p-relative">                           
                            <span>Stock : <%= m.getQuantite()%></span>
                            <span>Prix : <%= m.getPrixUnitaire()%> UM</span>  
                        </div>
                    </div>
                    <% }%>
                </div>


            </div>
        </div>
    </body>
</html>
