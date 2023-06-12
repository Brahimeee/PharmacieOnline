<%-- 
    Document   : notifications
    Created on : 7 juin 2023, 02:28:18
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
        <title>Notifications</title>
    </head>
    <body>
        <div class="page d-flex">
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
                        <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="medicament.jsp">
                            <i class="fas fa-medkit"></i>
                            <span>Médicaments</span>
                        </a>
                    </li>
                    <li>
                        <a class="active d-flex align-center fs-14 c-black rad-6 p-10" href="notifications.jsp">
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
                <h1 class="p-relative">Notifications</h1>

                <div class="projects p-20 bg-white rad-10 m-20">
                    <h2 class="mt-0 mb-20">Les notifications du payement </h2>
                    <div class="responsive-table">
                        <table class="fs-15 w-full">
                            <thead>
                                <tr>
                                    <td>Nom</td>
                                    <td>Telephone</td>
                                    <td>Address</td>
                                    <td>Médicament</td>
                                    <td>Prix Unitaire</td>
                                    <td>Quantité</td>
                                    <td>Prix Genéral</td>
                                    <td>Payer Par</td>
                                    <td>Action</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Ahmed</td>
                                    <td>20024412</td>
                                    <td>NKTT</td>
                                    <td>Paracetomol</td>
                                    <td>700</td>
                                    <td>4</td>
                                    <td>2800</td>
                                    <td>Masrivi</td>
                                    <td>
                                        <div class="info p-15 p-relative">                           
                                            <a href="#" class="delete fs-14 bg-red c-white w-fit btn-shape">
                                                Supprimer
                                            </a>  
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ahmed</td>
                                    <td>20024412</td>
                                    <td>NKTT</td>
                                    <td>Paracetomol</td>
                                    <td>700</td>
                                    <td>4</td>
                                    <td>2800</td>
                                    <td>Masrivi</td>
                                    <td>
                                        <div class="info p-15 p-relative">                           
                                            <a href="#" class="delete fs-14 bg-red c-white w-fit btn-shape">
                                                Supprimer
                                            </a>  
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ahmed</td>
                                    <td>20024412</td>
                                    <td>NKTT</td>
                                    <td>Paracetomol</td>
                                    <td>700</td>
                                    <td>4</td>
                                    <td>2800</td>
                                    <td>Masrivi</td>
                                    <td>
                                        <div class="info p-15 p-relative">                           
                                            <a href="#" class="delete fs-14 bg-red c-white w-fit btn-shape">
                                                Supprimer
                                            </a>  
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ahmed</td>
                                    <td>20024412</td>
                                    <td>NKTT</td>
                                    <td>Paracetomol</td>
                                    <td>700</td>
                                    <td>4</td>
                                    <td>2800</td>
                                    <td>Masrivi</td>
                                    <td>
                                        <div class="info p-15 p-relative">                           
                                            <a href="#" class="delete fs-14 bg-red c-white w-fit btn-shape">
                                                Supprimer
                                            </a>  
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
