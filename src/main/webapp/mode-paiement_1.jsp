<%-- 
    Document   : mode-paiement
    Created on : 7 juin 2023, 16:01:11
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
        <title>Mode de paiement</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            .container {
                max-width: 400px;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }

            input[type="text"], input[type="number"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            .card-details {
                display: flex;
                flex-direction: column;
                gap: 10px;
            }

            .card-row {
                display: flex;
                gap: 10px;
            }

            .card-expiry-month,
            .card-expiry-year,
            .card-cvc {
                width: 48%;
            }

            .btn-submit {
                display: block;
                width: 100%;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .btn-submit:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class="page d-flex">
            <div class="content w-full">

                <h1 class="p-relative">Ton/Ta Mode de paiement</h1>
                <div class="wrapper">
                    <!-- Start Welcome Widget -->
                    <div class="welcome bg-white rad-10 txt-c-mobile block-mobile">
                        <div class="body txt-c space-between p-20 mt-20 mb-20 block-mobile">
                            <a class="" href="mode-paiement_1.jsp">
                                <img src="imgs/icons8-mastercard-48.png" alt="" />
                                <p>master card</p>
                            </a>
                            <a class="" style="color: black;" href="#" >
                                <i class="fas fa-university bank-icon" style="font-size: 48px;"></i>
                                <p>Masrivi</p>
                            </a>

                        </div>
                    </div>
                    <!-- End Welcome Widget -->
                </div>
                <div class="container">
                    <h2>Formulaire de paiement</h2>
                    <form>
                        <div class="form-group">
                            <label for="cardholder">Nom du titulaire de la carte</label>
                            <input type="text" id="cardholder" name="cardholder" required>
                        </div>
                        <div class="form-group">
                            <label for="cardnumber">Numéro de carte</label>
                            <input type="text" id="cardnumber" name="cardnumber" required>
                        </div>
                        <div class="card-details">
                            <div class="card-row">
                                <div class="form-group card-expiry">
                                    <label for="expiry-month">Mois d'expiration</label>
                                    <input type="number" id="expiry-month" name="expiry-month" min="1" max="12" required>
                                </div>
                                <div class="form-group card-expiry">
                                    <label for="expiry-year">Année d'expiration</label>
                                    <input type="number" id="expiry-year" name="expiry-year" min="2023" max="2050" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cvc">Cryptogramme visuel (CVC)</label>
                                <input type="number" id="cvc" name="cvc" required>
                            </div>
                        </div>
                        <input type="submit" value="Valider le paiement" class="btn-submit">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
