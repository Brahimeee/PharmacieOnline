package com.mycompany.pharmacy.servlets;

import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.dao.PharmacienDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
public class PharmacieRegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String codeLicence = request.getParameter("codeLicence");
            String nom = request.getParameter("nom");
            String HorairOuverture = request.getParameter("HorairOuverture");
            String joursGarde = request.getParameter("joursGarde");
            int idpharma = Integer.parseInt(request.getParameter("idpharma"));
            
            //Pharmacien pharma = new Pharmacien(codeLicence,nom,HorairOuverture,joursGarde,idpharma);
            //System.out.println(pharma);
            
            PharmacienDao dao= new PharmacienDao(ConnectionDB.getFactory());
            //boolean f=dao.savepharma(pharma);
            /*if(f)
            {
                System.out.println("Le pharmacien registre avec succes");
            }else{
                System.out.println("il y a des erreurs");
            }*/
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
