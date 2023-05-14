/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pharmacy.servlets;

import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.dao.MedicamentDao;
import com.mycompany.pharmacy.entities.Medicament;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class AddMedicamentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String nom = request.getParameter("nom");
            
            String desc = request.getParameter("desc");
            
            int prixUnitaire = Integer.parseInt(request.getParameter("prixUnitaire"));
           
            int qnt = Integer.parseInt(request.getParameter("qnt"));
            
            String dateFabrication = request.getParameter("dateFabrication");
            
            String dateExpiration = request.getParameter("dateExpiration");
            
            Part part = request.getPart("img");
            

            Medicament medicament = new Medicament();
            
            medicament.setNom(nom);
            
            medicament.setDescription(desc);
            
            medicament.setPrixUnitaire(prixUnitaire);
            
            medicament.setQnt(qnt);
            
            medicament.setDateFabrication(dateFabrication);
            
            medicament.setDateExpiration(dateExpiration);
            
            medicament.setImage(part.getSubmittedFileName());
            
            //Medicament save...
            MedicamentDao mdao = new MedicamentDao(ConnectionDB.getFactory());
            
            mdao.saveMedicament(medicament);
            
            //image upload
            //find the path to upload image
            String path = request.getRealPath("images")+ File.separator + "medicaments" + File.separator + part.getSubmittedFileName();

            
            System.out.println(path);
            
            //uploading code
            try {
                
                FileOutputStream fos = new FileOutputStream(path);
                
                InputStream is = part.getInputStream();
                
                //reading data
                byte[] data = new byte[is.available()];
                
                is.read(data);
                
                //writing data
                fos.write(data);
                
                fos.close();
               
            } catch (Exception e) {
                
                e.printStackTrace();
                
            }
            
            out.println("Medicament enregistrer avec sucess...");
            
            HttpSession httpSession = request.getSession();
            
            httpSession.setAttribute("messages", "Medicament enregistrer avec sucess...");
            
            response.sendRedirect("ManageMedication.jsp");
            
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
