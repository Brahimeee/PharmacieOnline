<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Dashboard Pharmacien</title>
        <link rel="stylesheet" href="css/all.min.css" />
        <link rel="stylesheet" href="css/framework.css" />
        <link rel="stylesheet" href="css/master.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;500&display=swap" rel="stylesheet" />
    </head>
    <body>
        <div class="page d-flex">
            <div class="sidebar bg-white p-20 p-relative">
                <h3 class="p-relative txt-c mt-0">Ma Pharmacie</h3>
                <ul>
                    <li>
                        <a class="active d-flex align-center fs-14 c-black rad-6 p-10" href="dashboard_pharmacien.jsp">
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
            
            <div class="content w-full">
                <!-- Start Head -->
                <div class="head bg-white p-15 between-flex">
                    
                    <div class="icons d-flex align-center">
                        <span class="txt-transform c-grey fs-14">
                            Bienvenue&nbsp; 
                        </span>
                        <span> Abdallahi Nah</span>
                    </div>
                </div>
                <!-- End Head -->
                <h1 class="p-relative">Dashboard</h1>
                <div class="wrapper">
                    <!-- Start Welcome Widget -->
                    <div class="welcome bg-white rad-10 txt-c-mobile block-mobile">
                        <h2 class="mt-0 mb-10">Statistiques par Catégorie</h2>
                        <div class="body txt-c d-flex p-20 mt-20 mb-20 block-mobile">
                            <div>Catégorie 1 <span class="d-block c-grey fs-14 mt-10">Nom</span></div>
                            <div>Quantité <span class="d-block c-grey fs-14 mt-10">100</span></div>
                            <div>Payer <span class="d-block c-grey fs-14 mt-10">45</span></div>
                            <div>Prix <span class="d-block c-grey fs-14 mt-10">150000</span></div>
                        </div>
                        <div class="body txt-c d-flex p-20 mt-20 mb-20 block-mobile">
                            <div>Catégorie 1 <span class="d-block c-grey fs-14 mt-10">Nom</span></div>
                            <div>Quantité <span class="d-block c-grey fs-14 mt-10">100</span></div>
                            <div>Payer <span class="d-block c-grey fs-14 mt-10">45</span></div>
                            <div>Prix <span class="d-block c-grey fs-14 mt-10">150000</span></div>
                        </div>
                        <div class="body txt-c d-flex p-20 mt-20 mb-20 block-mobile">
                            <div>Catégorie 1 <span class="d-block c-grey fs-14 mt-10">Nom</span></div>
                            <div>Quantité <span class="d-block c-grey fs-14 mt-10">100</span></div>
                            <div>Payer <span class="d-block c-grey fs-14 mt-10">45</span></div>
                            <div>Prix <span class="d-block c-grey fs-14 mt-10">150000</span></div>
                        </div>
                    </div>
                    <!-- End Welcome Widget -->
                </div>
                <!-- Start Projects Table -->
                <div class="projects p-20 bg-white rad-10 m-20">
                    <h2 class="mt-0 mb-20">Les meilleurs catégorie ventes par moi </h2>
                    <div class="responsive-table">
                        <table class="fs-15 w-full">
                            <thead>
                                <tr>
                                    <td>Moi</td>
                                    <td>Catégorie</td>
                                    <td>Nombre des ventes</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Janvier</td>
                                    <td>Catégorie 1</td>
                                    <td>25</td>
                                </tr>
                                <tr>
                                    <td>Véfrier</td>
                                    <td>Catégorie 2</td>
                                    <td>32</td>                                    
                                </tr>
                                <tr>
                                    <td>Mars</td>
                                    <td>Catégorie 3</td>
                                    <td>70</td>                                    
                                </tr>
                                <tr>
                                    <td>Avril</td>
                                    <td>Catégorie 2</td>
                                    <td>55</td>
                                </tr>
                                <tr>
                                    <td>Mai</td>
                                    <td>Catégorie 1</td>
                                    <td>88</td>
                                </tr>
                                <tr>
                                    <td>Juin</td>
                                    <td>Catégorie 3</td>
                                    <td>44</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- End Projects Table -->
                <!-- Start Projects Table -->
                <div class="projects p-20 bg-white rad-10 m-20">
                    <h2 class="mt-0 mb-20">Les meilleurs revenue par moi </h2>
                    <div class="responsive-table">
                        <table class="fs-15 w-full">
                            <thead>
                                <tr>
                                    <td>Moi</td>
                                    <td>Catégorie</td>
                                    <td>Nombre des ventes</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Janvier</td>
                                    <td>Catégorie 1</td>
                                    <td>250000</td>
                                </tr>
                                <tr>
                                    <td>Véfrier</td>
                                    <td>Catégorie 2</td>
                                    <td>320000</td>                                    
                                </tr>
                                <tr>
                                    <td>Mars</td>
                                    <td>Catégorie 3</td>
                                    <td>700080</td>                                    
                                </tr>
                                <tr>
                                    <td>Avril</td>
                                    <td>Catégorie 2</td>
                                    <td>5500000</td>
                                </tr>
                                <tr>
                                    <td>Mai</td>
                                    <td>Catégorie 1</td>
                                    <td>8800000</td>
                                </tr>
                                <tr>
                                    <td>Juin</td>
                                    <td>Catégorie 3</td>
                                    <td>4400000</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- End Projects Table -->
                <div class="wrapper">
                    <!-- Start Welcome Widget -->
                    <div class="welcome bg-white rad-10 txt-c-mobile block-mobile">
                        <h2 class="mt-0 mb-10">Total</h2>
                        <div class="body txt-c d-flex p-20 mt-20 mb-20 block-mobile">
                            <div>Total vente <span class="d-block c-grey fs-14 mt-10">250000</span></div>
                            <div>revenue totale <span class="d-block c-grey fs-14 mt-10">100000000</span></div>                
                        </div>                        
                    </div>
                    <!-- End Welcome Widget -->
                </div>
            </div>
        </div>
    </body>
</html>
