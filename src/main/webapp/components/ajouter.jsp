<%-- 
    Document   : ajouter
    Created on : 25 mars 2023, 13:12:01
    Author     : abdou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter médicament</title>
        <link rel="stylesheet" href="../css/add_style.css" />
        <%@include file="common_css_js.jsp" %>
    </head>
    <body>
        <div class="container">
            <%@include file="messages.jsp" %>
            <div class="title">Nauveau médicament</div>
            <form action="../AddMedicamentServlet" method="post" enctype="multipart/form-data">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Nom du Médicament</span>
                        <input name="nom" type="text" placeholder="nom" required/>
                    </div>
                    <div class="input-box">
                        <span class="details">Description</span>
                        <textarea name="desc" placeholder="description"></textarea>
                    </div>
                    <div class="input-box">
                        <span class="details">Prix unitaire</span>
                        <input name="prixUnitaire" type="number" placeholder="prix unitaire" required/>
                    </div>
                    <div class="input-box">
                        <span class="details">Quantité</span>
                        <input name="qnt" type="number" placeholder="quantité" required/>
                    </div>
                    <div class="input-box">
                        <span class="details">Date de fabrication</span>
                        <input name="dateFabrication" type="date" style="cursor: pointer;"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Date d'expiration</span>
                        <input name="dateExpiration" type="date" style="cursor: pointer;"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Image</span>
                        <input name="img" type="file" required/>
                    </div>


                </div>
                <div class="submit">
                    <input type="submit" value="Ajouter" />

                </div>
                <div class="reset">
                    <input type="reset" value="Annuler" />
                </div>
            </form>
        </div>
    </body>
</html>
