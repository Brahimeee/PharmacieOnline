<%-- 
    Document   : details-medicaments
    Created on : 7 juin 2023, 02:56:55
    Author     : abdou
--%>

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
        <title>Médicament</title>
    </head>
    <body>
        <div class="page d-flex">
            <div class="sidebar bg-white p-20 p-relative">
                <h3 class="p-relative txt-c mt-0">Ma Pharmacie</h3>
                <ul>
                    <li>
                        <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="dashboard_pharmacien.jsp">
                            <i class="fa-regular fa-chart-bar fa-fw"></i>
                            <span>Accueil</span>
                        </a>
                    </li>
                    <li>
                        <a class="active d-flex align-center fs-14 c-black rad-6 p-10" href="medicament.jsp">
                            <i class="fa-solid fa-gear fa-fw"></i>
                            <span>Médicaments</span>
                        </a>
                    </li>
                    <li>
                        <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="notifications.jsp">
                            <i class="fa-regular fa-user fa-fw"></i>
                            <span>Notifications</span>
                        </a>
                    </li>
                    <li>
                        <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="#">
                            <i class="fa-solid fa-diagram-project fa-fw"></i>
                            <span>Déconnecter</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="content w-full">
                <!-- Start Head -->
                <div class="head bg-white p-15 between-flex">
                    <div class="search p-relative">
                        <input class="p-10" type="search" placeholder="Rechercher..." />
                    </div>
                    <div class="icons d-flex align-center">
                        <span class="txt-transform c-grey fs-14">
                            Bien Venue&nbsp; 
                        </span>
                        <span> Abdallahi Nah</span>
                    </div>
                </div>
                <!-- End Head -->
                <h1 class="p-relative">Médicaments</h1>
            </div>
        </div>
    </body>
</html>
