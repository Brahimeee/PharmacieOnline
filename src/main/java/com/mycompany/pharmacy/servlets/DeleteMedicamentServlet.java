/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pharmacy.servlets;

import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.entities.Medicament;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author abdou
 */
public class DeleteMedicamentServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                int idMedicament = Integer.parseInt(request.getParameter("idMedicament").trim());

                Session s = ConnectionDB.getFactory().openSession();
                Transaction tx = s.beginTransaction();
                
                Medicament medicament = (Medicament) s.get(Medicament.class, idMedicament);
                s.delete(medicament);
                tx.commit();
                s.close();
                
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("messages", "Medicament supprimer avec sucess...");
                response.sendRedirect("ManageMedication.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
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
