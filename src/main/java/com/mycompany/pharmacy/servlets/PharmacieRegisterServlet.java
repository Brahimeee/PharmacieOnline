package com.mycompany.pharmacy.servlets;

import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.dao.PharmacieDao;
import com.mycompany.pharmacy.dao.PharmacienDao;
import com.mycompany.pharmacy.entities.Pharmacie;
import com.mycompany.pharmacy.entities.Pharmacien;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
public class PharmacieRegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String codeLicence = request.getParameter("codeLicence");
            String nom = request.getParameter("nom");
            String horairOuverture = request.getParameter("HorairOuverture");
            String joursGarde = request.getParameter("joursGarde");
            int idPharmacien = Integer.parseInt(request.getParameter("idpharma"));
            double longitude = Double.parseDouble(request.getParameter("longitude"));
            double atitude = Double.parseDouble(request.getParameter("atitude"));

            Pharmacie pharmacie = new Pharmacie();

            pharmacie.setCodeLicence(codeLicence);
            pharmacie.setNom(nom);
            pharmacie.setHorairOuverture(horairOuverture);
            pharmacie.setJoursGarde(joursGarde);
            //pharmacie.setIdPharmacien(idPharmacien);
            pharmacie.setLongitude(longitude);
            pharmacie.setAltitude(atitude);
            
            //get pharmacien by id
            PharmacienDao pdao = new PharmacienDao(ConnectionDB.getFactory());
            Pharmacien pharmacien = pdao.getPharmacien(idPharmacien);
            
            pharmacie.setPharmacien(pharmacien);

            //Enregistrer pharmacie
            PharmacieDao phDao = new PharmacieDao(ConnectionDB.getFactory());
            phDao.savePharmacie(pharmacie);

            out.println("Pharmacie enregistrer avec sucess...");

            HttpSession httpSession = request.getSession();

            httpSession.setAttribute("messages", "Pharmacie enregistrer avec sucess...");

            response.sendRedirect("login.jsp");

            return;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
