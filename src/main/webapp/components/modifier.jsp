<%-- 
    Document   : ajouter
    Created on : 25 mars 2023, 13:12:01
    Author     : abdou
--%>
<%@page import="com.mycompany.pharmacy.entities.Medicament"%>
<%@page import="com.mycompany.pharmacy.aide.ConnectionDB"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifier médicament</title>
        <link rel="stylesheet" href="../css/add_style.css" />
        <%@include file="common_css_js.jsp" %>
    </head>
    <body>
        <div class="container">
            <%@include file="messages.jsp" %>
            <div class="title">modifier médicament</div>
            <%                int idMedicament = Integer.parseInt(request.getParameter("idMedicament").trim());
                Session s = ConnectionDB.getFactory().openSession();
                Medicament medicament = (Medicament) s.get(Medicament.class, idMedicament);
            %>
            <form action="../UpdateMedicamentServlet" method="post" enctype="multipart/form-data">
                <div class="user-details">
                    <input name="idMedicament" type="hidden"
                           value="<%= medicament.getIdMedicament() %>"/>
                    <div class="input-box">
                        <span class="details">Nom du Médicament</span>
                        <input name="nom" type="text" placeholder="nom" required value="<%= medicament.getNom()%>"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Description</span>
                        <textarea name="desc" placeholder="description"><%= medicament.getDescription()%></textarea>
                    </div>
                    <div class="input-box">
                        <span class="details">Prix unitaire</span>
                        <input name="prixUnitaire" type="number" placeholder="prix unitaire" required value="<%= medicament.getPrixUnitaire()%>"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Quantité</span>
                        <input name="qnt" type="number" placeholder="quantité" required value="<%= medicament.getQuantite()%>"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Date de fabrication</span>
                        <input name="dateFabrication" type="date" style="cursor: pointer;" value="<%= medicament.getDateFabrication()%>"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Date d'expiration</span>
                        <input name="dateExpiration" type="date" style="cursor: pointer;" value="<%= medicament.getDateExp() %>"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Image</span>
                        <input name="img" type="file" required/>                       
                    </div>
                </div>
                <div class="submit">
                    <input type="submit" value="Modifier" />
                </div>
                <div class="reset">
                    <input type="reset" value="Annuler" />
                </div>
            </form>
        </div>
    </body>
</html>
