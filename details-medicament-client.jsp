<%-- 
    Document   : details-medicament-client
    Created on : 7 juin 2023, 14:21:01
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
        <title>Medicament</title>
    </head>
    <body>
        <div class="page d-flex">
            <div class="content w-full">
                <!-- Start Head -->
                <div class="head bg-white p-15 between-flex">
                    <div class="search p-relative">
                        <input class="p-10" type="search" placeholder="Rechercher..." />
                    </div>
                    <div class="add-medicament">
                        <a href="#" class="visit d-block fs-14 bg-blue c-white w-fit btn-shape">
                            Pharmacien
                        </a>
                    </div>
                </div>
                <!-- End Head -->
                <h1 class="p-relative">Médicaments</h1>
                <!-- Start Projects Table -->
                <div class="projects p-20 bg-white rad-10 m-20">
                    <h2 class="mt-0 mb-20"></h2>
                    <div class="responsive-table">
                        <table class="table align-middle mb-0 bg-white">
                            <thead class="bg-light">
                                <tr>
                                    <td>Mon panier</td>
                                    <td>Prix unitaire</td>
                                    <td>Quantité</td>
                                    <td>Total</td>
                                    <td>Payer</td>
                                    <td>Supprimer</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <img
                                                src="imgs/medic1.jpg"
                                                alt=""
                                                style="width: 120px; height: 120px"
                                                class="rounded-circle"
                                                />
                                            <div class="ms-3">
                                                <p class="fw-bold mb-1">Mastering Web Design</p>
                                                <p class="text-muted mb-0">Master The Art Of Web Designing And Mocking, 
                                                    Prototyping And Creating Web Design Architecture</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>1000UM</td>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <button class="btn btn-link btn-sm btn-rounded" style="
                                                    border: none;
                                                    border-radius: 50%;
                                                    cursor: pointer;
                                                    font-size: 20px;
                                                    font-weight: bold;
                                                    background-color: var(--red-color);
                                                    color: white;
                                                    margin-right: 5px;"  ocnclick="decrement()">-</button>
                                            <div class="number" id="number">0</div>
                                            <button class="btn btn-link btn-sm btn-rounded" style="
                                                    border: none;
                                                    border-radius: 50%;
                                                    cursor: pointer;
                                                    font-size: 20px;
                                                    font-weight: bold;
                                                    background-color: forestgreen;
                                                    color: white;
                                                    margin-left: 5px;" onclick="increment()">+</button>     
                                        </div>
                                        <script>
                                            var numberElement = document.getElementById("number");
                                            var number = 0;

                                            function increment() {
                                                number++;
                                                numberElement.textContent = number;
                                            }

                                            function decrement() {
                                                if (number > 0) {
                                                    number--;
                                                    numberElement.textContent = number;
                                                }
                                            }
                                        </script>
                                    </td>
                                    <td>1000UM</td>
                                    <td>
                                        <a href="mode-paiement.jsp" style="color: forestgreen;">paiement</a>
                                    </td>
                                    <td>
                                        <a href="#" style="color: red;">Supprimer</a>                  
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <img
                                                src="imgs/medic1.jpg"
                                                alt=""
                                                style="width: 120px; height: 120px"
                                                class="rounded-circle"
                                                />
                                            <div class="ms-3">
                                                <p class="fw-bold mb-1">Mastering Web Design</p>
                                                <p class="text-muted mb-0">Master The Art Of Web Designing And Mocking, 
                                                    Prototyping And Creating Web Design Architecture</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>1000UM</td>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <button class="btn btn-link btn-sm btn-rounded" style="
                                                    border: none;
                                                    border-radius: 50%;
                                                    cursor: pointer;
                                                    font-size: 20px;
                                                    font-weight: bold;
                                                    background-color: var(--red-color);
                                                    color: white;
                                                    margin-right: 5px;"  ocnclick="decrement()">-</button>
                                            <div class="number" id="number">0</div>
                                            <button class="btn btn-link btn-sm btn-rounded" style="
                                                    border: none;
                                                    border-radius: 50%;
                                                    cursor: pointer;
                                                    font-size: 20px;
                                                    font-weight: bold;
                                                    background-color: forestgreen;
                                                    color: white;
                                                    margin-left: 5px;" onclick="increment()">+</button>     
                                        </div>
                                        <script>
                                            var numberElement = document.getElementById("number");
                                            var number = 0;

                                            function increment() {
                                                number++;
                                                numberElement.textContent = number;
                                            }

                                            function decrement() {
                                                if (number > 0) {
                                                    number--;
                                                    numberElement.textContent = number;
                                                }
                                            }
                                        </script>
                                    </td>
                                    <td>1000UM</td>
                                    <td>
                                        <a href="mode-paiement.jsp" style="color: forestgreen;">paiement</a>
                                    </td>
                                    <td>
                                        <a href="#" style="color: red;">Supprimer</a>                  
                                    </td>

                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- End Projects Table -->
            </div>
        </div>
    </body>
</html>
